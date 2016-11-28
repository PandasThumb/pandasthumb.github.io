#!/usr/bin/perl

#  perl ../_bin/updateurls.pl < ../_bin/moved_files.txt */*

use strict;
use warnings;
use v5.24;

use File::Slurper qw(read_text write_text);

# process input urls
my %convert;
while(<STDIN>) {
	chomp;
	my @h = split(/\t/);
	$convert{$h[0]} = $h[1];
}


for(@ARGV) {
	my $file = $_;
	say("Processing $file...");
	my $text = read_text($file);

	while (my ($key, $value) = each %convert) {
		my $nkey = quotemeta($key);
		my $nval = quotemeta($value);
		if($text =~ s/$nkey/$value/g) {
			say("    $key => $value")
		}
	}
	write_text($file, $text);
}
