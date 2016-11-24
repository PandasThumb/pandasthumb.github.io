#!/usr/bin/perl -w

use v5.22;
use utf8;

binmode STDIN, ":encoding(UTF-8)";
binmode STDOUT, ":encoding(UTF-8)";

use warnings;
use strict;

use File::Slurper 'read_text';

use KwickXML;

my $str = read_text('/dev/stdin');

my ($front,$main) = $str =~ m|^(---\n.*?\n---)\n(.*)$|s; 

say($front);

$main =~ s|\[(/?u)\]|<$1>|g;

my $parser = Text::KwickXML->new();

$main = $parser->parse_text($main);

$main =~ s/^\s+//s;
$main =~ s/\s+$//s;

say($main);
