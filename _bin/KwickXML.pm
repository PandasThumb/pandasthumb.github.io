##########################################################################
#  Copyright (C) 2005-2008  Reed A. Cartwright, PhD (reed@scit.us)       #
#                                                                        #
#  This program is free software: you can redistribute it and/or modify  #
#  it under the terms of the GNU General Public License as published by  #
#  the Free Software Foundation, either version 3 of the License, or     #
#  (at your option) any later version.                                   #
#                                                                        #
#  This program is distributed in the hope that it will be useful,       #
#  but WITHOUT ANY WARRANTY; without even the implied warranty of        #
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         #
#  GNU General Public License for more details.                          #
#                                                                        #
#  You should have received a copy of the GNU General Public License     #
#  along with this program.  If not, see <http://www.gnu.org/licenses/>. #
#                                                                        #
#  $Id: KwickXML.pm 467 2009-05-25 01:08:28Z reed $                      #
##########################################################################

# TODO
#   entities
#   error messages
#   special urls
#   need for speed

package Text::KwickXML;
use strict;

use Text::Balanced qw(gen_delimited_pat);
use XML::Parser;
use Regexp::Common;
use Regexp::Common::URI::RFC2396 qw( $fragment);

sub new
{
	my $invocant = shift;
	my $class = ref($invocant) || $invocant;
	my $self = {
		restrict => 0,
		figure_space => 0,
		encode_html => 0,
		site_re => qr/^\#/,
		urlmaxlen => 50,
		docid => undef,
		wrote => 'Wrote:',
		references => 'References',
		toc => 'Table of Contents',
		notes => 'Notes',
		email_text => '[Enable javascript to see this email address.]',
		email_key => 0,
		res_tags => [qw(figure h html img note refs sidebar table td th toc tr eqn deqn equ dequ)],
		eqn => {},
		@_
	};
	$self->{eqn} = {
		size => 12,
		color => 'black',
		background => 'none',
		prefix => 'eqn-',
		suffix => '.png',
		quality => 90,
		dir => '/tmp/Text-KwickEqn',
		url => '/',
		pdflatex => 'pdflatex',
		'hex' => 0,
		packages => 'amsmath,amsfonts,amssymb,wasysym,latexsym,marvosym',
		%{$self->{eqn}},
	};
	$self->{eqn}->{url} .= '/' unless ($self->{eqn}->{url} =~ m!/$!);
	$self->{res_tags} = { map {$_ => 1} @{$self->{res_tags}} };
	$self->{res_tags}->{kwickxml} = 0;
	bless($self, $class);
	return $self;
}


{
my $p;
sub instance { $p; }
sub set_instance
{
	if(@_ && $_[0] ne __PACKAGE__) {
		$p = (@_ == 1) ? $_[0] : $_[1];
	}
	$p;
}
}

sub config
{
	my ($self,$k,$v) = @_;
	return undef unless(defined $k);
	$self->{$k} = $v if(defined $v);
	return $self->{$k};
}

my $ap = '(?:\w*\s*=\s*'.gen_delimited_pat(q{'"}).'\s*)*';
$ap = qr/$ap/o;
{
my $cdtags = qr/code|blockcode|html|equ|eqn/;

my $parser;
sub parse_text
{
	my $self = shift;
	my $text = shift;
	
	#Fix ascii errors
	$text =~ s!(?:\015?\012|\015)!\n!g;
	#$text =~ tr[\x80\x82-\x8C\x8E\x91-\x9C\x9E\x9F][\x{20AC}\x{201A}\x{0192}\x{201E}\x{2026}\x{2020}\x{2021}\x{02C6}\x{2030}\x{0160}\x{2039}\x{0152}\x{017D}\x{2018}\x{2019}\x{201C}\x{201D}\x{2022}\x{2013}\x{2014}\x{02DC}\x{2122}\x{0161}\x{203A}\x{0153}\x{017E}\x{0178}];
	
	$text =~ s|<($cdtags)($ap)>(.*?)</\1>|<$1$2><![CDATA[$3]]></$1>|ogs;

	$text =~ s/&/&amp;/gs;
	
	my $xml = "<?xml version='1.0' encoding='UTF-8'?><kwickxml>$text</kwickxml>";
	$parser = new XML::Parser(Style => 'Stream', Pkg => 'Text::KwickXML',
	                          ProtocolEncoding => 'UTF-8' ) unless $parser;
	$self->set_instance();
	unless($text = eval {$parser->parse($xml);})
	{
		$text = "<p><strong>Syntax Error:</strong> $@</p>";
	}
	$self->set_instance(undef);
	if($self->config('encode_html'))
	{
		require HTML::Entities;
		$text = HTML::Entities::encode($text, "^\n\r\t -?A-~");
	}
	no_utf8($text);
	return $text;
}

sub no_utf8 {
    for (@_) {
        next if ref;
        $_ = pack 'C0A*', $_;
    }
}

}

my %tags = (
	kwickxml => [ "", \&tag_kwickxml_end],
	strong => [ \&tag_save_kwick, \&tag_strong ],
	em => [ \&tag_save_kwick, \&tag_em ],
	strike => [ \&tag_save_kwick, \&tag_strike ],
	b => 'strong',
	i => 'em',
	u => 'em',
	's' => 'strike',
	tt => [ '`', '`'],
	'sub' => [ '<sub>', '</sub>'],
	sup => [ '<sup>', '</sup>'],
	small => [\&tag_save_kwick, \&tag_small],
	big => [\&tag_save_kwick, \&tag_big],
	center => ['', ''],
	sidebar => [ '<aside>', '</aside>'],
	p => [ '<p>', '</p>'],
	br => [ '<br />', ''],
	table => [\&tag_save_kwick,\&tag_table],
	'tr' => [\&tag_save_kwick,\&tag_tr],
	hr => ['*********', ''],
	div => [\&tag_div_start, \&tag_div_end],
	td => [ '|', ''],
	th => [ '|**', '**'],
	email => [ \&tag_email, '</a>'],
	a => [ \&tag_url_start, \&tag_url_end],
	url => 'a',
	img => [ \&tag_img, ''],
	figure => [ \&tag_figure, qq(\n</figcaption>\n</figure>)],	
	refs => 'ul',
	ref => 'ul',
	ol => [ \&tag_ol_start, \&tag_ol_end],
	ul => [ \&tag_ul_start, \&tag_ul_end],	
	list => 'ul',
	blockquote => [ \&tag_blockquote_start, \&tag_blockquote_end],
	quote => 'blockquote',
	qref => [ \&tag_qref_start, \&tag_qref_end],
	li => [ \&tag_li_start, \&tag_li_end],
	note => [\&tag_note_start, \&tag_note_end],
	toc => [ qq(\n{:toc}\n), qq() ],
	verse => [ \&tag_verse_start, \&tag_verse_end],
	h  => [ '# ', ''],
	h1 => [ '# ', ''],
	h2 => [ '## ', ''],
	h3 => [ '### ', ''],
	h4 => [ '#### ', ''],
	h5 => [ '##### ', ''],
	h6 => [ '###### ', ''],
	code => [ \&tag_code_start, \&tag_code_end],
	blockcode => [ \&tag_blockcode_start, \&tag_blockcode_end],
	html => [ \&tag_html_start, \&tag_html_end],
	eqn => [ \&tag_eqn_start, \&tag_eqn_end],
	equ => 'eqn',	
);

my %block_tags = map {$_ => 1} qw(blockquote quote kwickxml list ul ol div center refs verse);
my %para_tags = map {$_ => 1} qw(p h h1 h2 h3 h4 h5 h6 blockcode html hr table figure);

sub is_restricted
{
	my $e = shift;
	my $t = shift;
	
	my $kw = Text::KwickXML->instance;
	return ($kw->config('restrict')
		&& $kw->config('res_tags')->{$t});
}

sub get_state { $_[0]->{kw_state}->[-1]; }
sub set_state { $_[0]->{kw_state}->[-1] = $_[1];}
sub push_state { push(@{$_[0]->{kw_state}}, $_[1]); }
sub pop_state {	pop(@{$_[0]->{kw_state}}); }

sub verse {
	defined($_[1]) ? $_[0]->{kw_verse} = $_[1] : $_[0]->{kw_verse};
}

sub StartTag
{
	my $e = shift;
	my $t = shift;
	
	my $f = $tags{$t};
	while(defined $f && ref($f) eq '') {
		$t = $f;
		$f = $tags{$f};
	}
	return '' if(!$f || is_restricted($e, $t));
	
	foreach my $k (keys %_)
	{
		$_{$k} =~ s/&/&amp;/g;
		$_{$k} =~ s/"/&quot;/g;
		$_{$k} =~ s/'/&apos;/g;
	}

	if($block_tags{$t})
	{
		$e->{kwick} .= "\n\n" if(get_state($e) == 2);
		set_state($e,1);
		push_state($e,1);
	}
	elsif($para_tags{$t})
	{
		$e->{kwick} .= "\n\n" if(get_state($e) == 2);
		set_state($e,1);
		push_state($e,0);
	}
	else
	{
		$e->{kwick} .= "" if(get_state($e) == 1);
		set_state($e,2);
		push_state($e,0);
	}
	my $r = $f->[0];
	$e->{kwick} .= (ref($r) eq "CODE") ?
		$r->($e) : $r;
}

sub EndTag
{
	my $e = shift;
	my $t = shift;
	
	my $f = $tags{$t};
	while(defined $f && ref($f) eq '') {
		$t = $f;
		$f = $tags{$f};
	}
	return '' if(!$f || is_restricted($e, $t));
	
	my $state = pop_state($e);
	$e->{kwick} .= "" if($state && $state != 1 && $block_tags{$t});
	my $r = $tags{$t}->[1];		
	$e->{kwick} .= (ref($r) eq "CODE") ? $r->($e) : $r;
	$e->{kwick} .= "\n\n" if($block_tags{$t} || $para_tags{$t});
	$e->{kwick};
}

sub IsOpensNextQuote {
	return <<END;
+utf8::WhiteSpace
+utf8::OpenPunctuation
+utf8::InitialPunctuation
+utf8::DashPunctuation
END
}

sub IsClosesPrevQuote {
	return <<END;
+utf8::WhiteSpace
+utf8::ClosePunctuation
+utf8::TerminalPunctuation
+utf8::DashPunctuation
END
}

# http://tools.ietf.org/html/rfc3986
my $qrhttp = qr/($Regexp::Common::RE{URI}{HTTP}{-scheme=>'https?'}(?:#(?:$fragment)?)?)/;
my $qremail = qr/([-\w.+]+\@$Regexp::Common::RE{net}{domain}{-nospace})/;

sub Text
{
	my $e = shift;

	s/&amp;/&/gs;
	
	# kw_in_html: normal (0), code (1), html (2)
	if($e->{kw_in_html} == 2) {
		s|</param>||g;
		s|</embed>||g;
		s/\n[ \t]+/\n/g;
		return $e->{kwick} .= $_;
	} elsif($e->{kw_in_html} == 1){
		#s/>/&gt;/gs;
		#s/</&lt;/gs;
		return $e->{kwick} .= $_;
	} else {
		s/>/&gt;/gs;
		s/</&lt;/gs;
		s/\n[ \t]+/\n/g;
	}

	s/([\[\]\*])/\\$1/gs;

	s/``/"/gs;
	s/''/"/gs;
	s/`/'/gs;

	# '80s, 'til, 'twas
	#s/'(?=\p{Nd}\p{Nd}[Ss]|[Tt][Ii][Ll]|[Tt][Ww][Aa][Ss])/\x{2019}/gs;
	
	# create open quotes
	#s/^"$/\x{201C}/gs;
	#s/^'$/\x{2018}/gs;

	#s/^"(?=\P{IsClosesPrevQuote})/\x{201C}/gs;
	#s/^'(?=\P{IsClosesPrevQuote})/\x{2018}/gs;

	#s/(?<=\p{IsOpensNextQuote})"/\x{201C}/gs;
	#s/(?<=\p{IsOpensNextQuote})'/\x{2018}/gs;
	
	#s/(?<=[\x{201C}\x{2018}])"/\x{201C}/gs;
	#s/(?<=[\x{201C}\x{2018}])'/\x{2018}/gs;

	#s/"/\x{201D}/gs;
	#s/'/\x{2019}/gs;
			
	if(get_state($e))
	{
		if(s!^\n{2,}!!gs && get_state($e) != 1)
		{
			$e->{kwick} .= "\n\n";
			set_state($e,1);
		}
		return unless(length($_));
		return $e->{kwick} .= (verse($e) ? "  $_" : $_) if(m/^\n$/);		
	
		if(get_state($e) != 2)
		{
			$e->{kwick} .= '';
			set_state($e,2);
		}
		if(get_state($e))
		{
			s|\n{2,}(?!$)|\n\n|gs;
			set_state($e,2);
		}
		set_state($e,1) if(s!\n{2,}$!\n\n!gs);
		if(verse($e)) {
			s|(?<!\n)\n(?!\n)|  \n|gs;
		}	
	} elsif(verse($e)) {
		s!\n!  \n!gs;
	}	
	
	#s/&(?!#?[xX]?(?:[0-9a-fA-F]+|\w{1,8});)/&amp;/gs;

	#s/(\.\s*)\.\s*\.\s*\./$1\x{2026}/gs;
	#s/\.\s*\.\s*\./\x{2026}/gs;
	#s/(\d+)([tT][hH]|[sS][tT]|[nN][dD]|[rR][dD])/$1<sup>$2<\/sup>/gs;
	#s/---/\x{2014}/gs;
	#s/--/\x{2013}/gs;                                              	
	#s/\([cC]\)/\xA9/gs;
	#s/\([rR]\)/\xAE/gs;
	#s/\([Tt][Mm]\)/\x{2122}/gs;	
	
	#s/$config{blog_ent_re}/$config{blog_ent}->{$1}/gs if($config{blog_ent_re});
	#s/$config{sys_ent_re}/$config{sys_ent}->{$1}/gs if($config{sys_ent_re});	
		
	#s/$qrhttp/link_http($e, $1)/gse;
	#s/$qremail/link_email($e, $1)/gse;
				
	$e->{kwick} .= $_;
}

sub StartDocument
{
	my $e = shift;
	my %defs = (
		kwick => '',
		kwick_stack => [],
		kw_state => [1],
		kw_notes => [],
		kw_do_toc => 0,
		kw_toc => [],
		kw_toc_id => {},
		kw_in_html => 0,
		kw_verse => 0,
	);
	foreach my $k(keys(%defs)) {
		$e->{$k} = $defs{$k};
	}
}

sub EndDocument
{
	my $e = shift;
	my $text = $e->{kwick};
	
	# if($e->{kw_do_toc})
	# {
	# 	my $tls = '';
	# 	foreach my $v(@{$e->{kw_toc}})
	# 	{
	# 		$tls .= qq(<li><a href="#$v->[0]">$v->[1]</a></li>);
	# 	}
	# 	$text =~ s!<ol class="kw-toc-list">!<ol class="kw-toc-list">$tls!gs;
	# }
	
	# $text =~ s!<p>(
	# 		\s*(?:<a\s+$ap\s*>)?
	# 		\s*<img\s+$ap\s*/>
	# 		\s*(?:</a>)?
	# 		\s*(?:[(]\s*[\w.-]*\s*[)])?
	# 		\s*)</p>
	# 		!<p class="kw-img-center">$1</p>!sgxo;
	
	return $text;
}

sub tag_kwickxml_end
{
	my $e = shift;
	my $s = '';
	# add notes
	if(@{$e->{kw_notes}})
	{
		my @notes = @{$e->{kw_notes}};

		foreach my $z (1..@notes)
		{
			$s .= "\n\n" . $notes[$z-1];
		}
	}
	$s;
}

sub tag_save_kwick {
	my $e = shift;
	save_kwick($e);
}

sub save_kwick
{
	my $e = shift;
	my $t = shift;
	$e->{kwick} .= $t if(defined $t);
	push( @{$e->{kwick_stack}}, $e->{kwick});
	$e->{kwick} = '';
	'';
}

sub load_kwick
{
	my $e = shift;
	my $k = $e->{kwick};
	$e->{kwick} = pop(@{$e->{kwick_stack}});
	return $k;
}

sub copy_attrib
{
	my $ret = '';
	foreach my $t(@_)
	{
		my $at = $_{$t};
		$ret .= qq( $t="$at") if(defined $at);
	}
	$ret;
}

sub sanitize_attrib
{
	%_ = map { $_ => $_{$_} } @_;
}

sub link_limit
{
	my $text = shift;
	my $kw = Text::KwickXML->instance;
	if(length($text) >= $kw->config('urlmaxlen'))
	{
		my $umax = $kw->config('urlmaxlen')-3;
		my $uhead = int($umax*0.75);
		$text = substr($text,0,$uhead) . '[&hellip;]'
			. substr($text,length($text)-($umax-$uhead));
	}	
	$text;
}

sub link_http
{
	my $e = shift;
	my $url = shift;
	my $extra = '';
	if($url =~ m!^(.*?/?#?)(\p{Punct}*)$!) {
		$url = $1;
		$extra = $2;
	}
	my $text = link_limit($url);
	qq(<a href="$url">).$text.'</a>'.$extra;
}

sub link_email
{
	my $e = shift;
	my $address = shift;
	my $extra = '';
	$extra = chop($address) if($address =~ m/\p{Punct}$/);
	my $text = link_limit($address);
	local %_ = (address => "$address|$text");
	local $_ = qq(<email address="$address|$text">);
	my $kw = Text::KwickXML->instance;	
	tag_email($e).$kw->config('email_text').'</a>'.$extra;
}

sub PI
{

}

sub tag_strong {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s/^\s+//s;
	$s =~ s/\s+$//s;
	$s eq '' ? '' : qq(**$s**);
}

sub tag_em {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s/^\s+//s;
	$s =~ s/\s+$//s;
	$s eq '' ? '' : qq(_${s}_);
}

sub tag_strike {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s/^\s+//s;
	$s =~ s/\s+$//s;
	$s eq '' ? '' : qq(~~$s~~);
}

sub tag_tr {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s/\n//sg;
	"$s\n";	
}

sub tag_table {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s/\n{2,}/\n/sg;
	"$s\n";	
}

# work around incorrect big usage
sub tag_big {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s|^\s*|<big>|s;
	$s =~ s|\s*$|</big>|s;
	$s =~ s|\s*\n{2,}|</big>\n\n<big>|g;
	$s;
}

sub tag_small {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s|^\s*|<small>|s;
	$s =~ s|\s*$|</small>|s;
	$s =~ s|\s*\n{2,}|</small>\n\n<small>|g;
	$s;
}

sub tag_hr {
	my $s = qq(<hr);
	if(exists $_{width})
	{
		$_{width} .= 'px' if($_{width} =~ /^\d+$/);
		$s .= qq( style="width:$_{width};");
	}
	$s .= qq( />);
	return $s;
}

sub tag_td {
	my $s = qq(<td);
	$s .= copy_attrib(qw(colspan rowspan));
	$s .= qq(>);
	$s;
}

sub tag_th {
	my $s = qq(<th);
	$s .= copy_attrib(qw(colspan rowspan));
	$s .= qq(>);
	$s;
}

{
my @b64 = split(//,'0123456789:;ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz');
sub encode64
{
	my ($b,$p) = (0,'');
	my ($s,$k) = @_;
	my @x = ();
	$s = reverse($s);
	while(my $c = ord(chop($s)))
	{
		push(@x, $b^$c^$k);
		$b = $c;
	}
	if(@x%3 == 2)
	{
		$p = '+';
		push(@x, 0);
	}
	elsif(@x%3 == 1)
	{
		$p = '++';
		push(@x, 0, 0);	
	}
	$s = '';
	for(my $c=0;$c<@x;$c+=3)
	{
		my $n = ($x[$c]<<16) + ($x[$c+1]<<8) + ($x[$c+2]);
		my @n = (($n>>18) & 63, ($n>>12) & 63, ($n>>6) & 63, $n & 63);
		$s .= join('', @b64[@n]);
	}
	return substr($s, 0, length($s)-length($p)) . $p;
}
}

sub tag_email {
	my $s = $_{address} || $_{href} || '';
	$s =~ s/^mailto://;
	my $kw = Text::KwickXML->instance;
	my $k = $kw->config('email_key');
	$s = encode64($s, $k);
	qq(<a href="mailto:$s">);
}

sub push_href {
	my $e = shift;
	my $href = shift;
	push(@{$e->{ahref}}, $href);	
}

sub pop_href {
	my $e = shift;
	pop(@{$e->{ahref}});
}

sub tag_url_start {
	my $e = shift;
	my $href = $_{href} || '';

	#return tag_email($e) if($href =~ s/^\s*mailto://);
	
	push_href($e,$href);
	save_kwick($e);
}

sub tag_url_end {
	my $e = shift;
	my $s = load_kwick($e);
	my $href = pop_href($e);
	"[$s]($href)";
}

my %talignstyle = (
	left => 'text-align: left;',
	right => 'text-align: right;',
	center => 'text-align: center;',
	none => undef,
);

sub tag_div_start {
	my $e = shift;
	$_{align} ||= $_{place} || 'none';
	$_{style} ||= $talignstyle{$_{align}};
	my $s = qq(\n<div markdown="block");
	$s .= qq( style="$_{style}") if(defined $_{style});
	$s .= qq( class="$_{class}") if(defined $_{class});
	$s .= qq( title="$_{title}") if(defined $_{title});
	$s .= qq(>\n);
	save_kwick($e,$s);
}

sub tag_div_end {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s/^\s+//s;
	$s =~ s/\s+$//s;
	qq($s\n</div>\n);
}

my %alignstyle = (
	left => 'float:left;',
	right => 'float:right;',
	center => '',
	none => undef,
);

sub tag_img {
	$_{src} ||= '';
	$_{alt} ||= '';
	$_{align} ||= $_{place} || 'none';
	$_{style} ||= $alignstyle{$_{align}};
	my $s = qq(<img);
	$s .= copy_attrib(qw(src alt width height style class));
	$s .= ' />';
	my $e = shift;
	my $href = $_{href};
	if(defined $href)
	{
		$s = qq(<a href="$href">).$s.'</a>'
	}
	$s;
}

sub tag_figure {
    my $e = shift;
	qq(<figure>\n).tag_img($e).qq(\n<figcaption markdown="span">);
}

my %listtagmap = (
	'*' => 'list-style-type: disc;',
	O => 'list-style-type: circle;',
	'#' => 'list-style-type: square;',
	1 => 'list-style-type: decimal;',
	i => 'list-style-type: lower-roman;',
	I => 'list-style-type: upper-roman;',
	a => 'list-style-type: lower-alpha;',
	A => 'list-style-type: upper-alpha;',
	n => 'list-style-type: none;',
);

sub tag_ol {
	$_{type} ||= '';
	$_{style} ||= $listtagmap{$_{type}};	
	
	($_{style}) ?
		qq(<ol class="kw-list" style="$_{style}">) :
		qq(<ol class="kw-list">);
}

sub tag_ul {
	$_{type} ||= '';
	$_{style} ||= $listtagmap{$_{type}};	
	
	($_{style}) ?
		qq(<ul class="kw-list" style="$_{style}">) :
		qq(<ul class="kw-list">);
}

sub tag_blockquote_start {
	my $e = shift;
	my $s = '';
	$s .= "$_{author} wrote:\n\n" if(exists $_{author});
	save_kwick($e,$s);
}

sub tag_blockquote_end {
	my $e = shift;
	my $s = load_kwick($e);
	$s =~ s/^\s*\n//;
	$s =~ s/\s*\n$//;
	$s =~ s/^/> /mg;
	return $s;
}

sub tag_ol_start {
	my $e = shift;
	push(@{$e->{litype}}, 'ol');
	${$e->{linest}} += 1;
	save_kwick($e);
}

sub tag_ol_end {
	my $e = shift;
	pop(@{$e->{litype}});
	${$e->{linest}} -= 1;
	my $s = load_kwick($e);
	$s =~ s|\n\s*\n|\n|g;
	$s;
}


sub tag_ul_start {
	my $e = shift;
	push(@{$e->{litype}}, 'ul');
	${$e->{linest}} += 1;
	save_kwick($e);
}

sub tag_ul_end {
	my $e = shift;
	pop(@{$e->{litype}});
	${$e->{linest}} -= 1;
	my $s = load_kwick($e);
	$s =~ s|\n\s*\n|\n|g;
	$s;
}


sub tag_li_start {
	my $e = shift;
	my $type = $e->{litype}->[-1] || 'ul';
	my $s = $type eq 'ul' ? "\n* " : "\n1. ";
	my $href = $_{href} || 0;
	push_href($e, $href);
	save_kwick($e,$s);
}

sub tag_li_end {
	my $e = shift;
	my $s = load_kwick($e);
	my $href = pop_href($e);
	if($href) {
		return "[$s]($href)";
	} else {
		return $s;
	}
}

sub tag_qref_start {
	my $e = shift;
	my $href = $_{href} || 0;
	push_href($e, $href);
	save_kwick($e);
}

sub tag_qref_end {
	my $e = shift;
	my $s = load_kwick($e);
	my $href = pop_href($e);
	if($href) {
		return "[$s]($href)";
	} else {
		return $s;
	}
}


sub tag_note_start {
	my $e = shift;
	my $z = @{$e->{kw_notes}}+1;
	my $title = $z;
	push(@{$e->{kw_notes}}, $title);
	save_kwick($e, qq([^$title]));
}

sub tag_note_end {
	my $e = shift;
	my $title = pop(@{$e->{kw_notes}});
	my $s = load_kwick($e);
	push(@{$e->{kw_notes}}, "[^$title]: $s");
	'';
}

sub tag_h_start {
	save_kwick(shift);
}

sub tag_h_end {
	my $e = shift;
	make_h($e, load_kwick($e));
}

sub make_h
{
	my $e = shift;
	my $text = shift;
	my $id = $text;
	$id =~ s/[^\s\w]//g;
	$id =~ s/\s+/-/g;
	$id = "kw-$id";
	if(exists $e->{kw_toc_id}->{$id})
	{
		my $i = 1;
		++$i while(exists $e->{kw_toc_id}->{"$id-$i"});
		$id .= "-$i";
	}
	$e->{kw_toc_id}->{$id} = 1;
	push(@{$e->{kw_toc}}, [$id, $text]);
	qq(<h4 class="kw-heading" id="$id">$text</h4>);
}

sub tag_html_start
{
	shift->{kw_in_html} = 2;
	'';
}

sub tag_html_end
{
	shift->{kw_in_html} = 0;
	'';
}

sub tag_code_start
{
	shift->{kw_in_html} = 1;
	qq(<code class="kw-code">);
}

sub tag_code_end
{
	shift->{kw_in_html} = 0;
	'</code>';
}

sub tag_blockcode_start
{
	shift->{kw_in_html} = 1;
	qq(```);
}

sub tag_blockcode_end
{
	shift->{kw_in_html} = 0;
	qq(```);
}


sub tag_eqn_start
{
	shift->{kw_in_html} = 2;
	'$$';
}


sub tag_eqn_end
{
	shift->{kw_in_html} = 0;
	'$$';
}

sub tag_verse_start {
	my $e = shift;
	verse($e, 1);
	return '';
}

sub tag_verse_end {
	my $e = shift;
	verse($e, 0);
	return '';
}

1;
