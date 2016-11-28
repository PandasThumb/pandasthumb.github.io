#!/usr/bin/perl

use strict;
use warnings;
use v5.24;

use File::Type;
use File::Copy;

my $input_dir = shift || die;
my $output_dir = shift || die;

my $ft = File::Type->new();

# process input urls
while(<>) {
	chomp;
	my $url = $_;
	my $old = $url;
	next if($url =~ m|^\w+:| && $url !~ m|^https?:|);
	$url =~ s|^https?:||;
	$url =~ s|^//||;

	my ($host, $path) = $url =~ m|^([^/]*)?(/.*)?$|;
	$host |= '';
	$path |= '/';

	# url is not one of ours
	next unless($host eq '' || $host =~ /pandasthumb.org$/);

	# file already exists
	next if(-f "$output_dir$path");

	# file exists in the old site
	my $ipath = "$input_dir$path";
	if(-f $ipath) {
	 	my $type = $ft->mime_type($ipath);
	 	if($type ne 'application/octet-stream' && $type ne 'text/html') {
	 		# identify year the file was last modified
	 		my $time = (stat(_))[9];
	 		my $year = (localtime($time))[5]+1900;
	 		my $file =  (File::Spec->splitpath($ipath))[2];
	 		my $destdir = "$output_dir/../uploads/$year/";
	 		mkdir($destdir) unless(-d $destdir);
	 		copy($ipath, $destdir) or die;
			say("$old\t/uploads/$year/$file");		
	 	}
	}
}

# application/octet-stream
# application/pdf
# application/zip
# audio/x-wav
# image/gif
# image/jpeg
# image/x-png
# text/html

