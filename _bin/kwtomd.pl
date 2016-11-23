#!/usr/bin/perl -w

use v5.22;
use utf8;

binmode STDIN, ":encoding(UTF-8)";
binmode STDOUT, ":encoding(UTF-8)";

use warnings;
use strict;

use File::Slurp;

use KwickXML;

my $str = read_file(\*STDIN);

my ($front,$main) = $str =~ m|^(---.*---)\n(.*)$|s; 

say($front);

my $parser = Text::KwickXML->new();

$main = $parser->parse_text($main);

say($main);
