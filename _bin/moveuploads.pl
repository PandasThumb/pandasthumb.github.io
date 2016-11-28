#!/usr/bin/perl

# # Rename posts from underscore to hypen

# find _posts -type f -execdir sh -c 'mv "$0" "${0//_/-}"' {} \;

# # Extract the urls of all links and images

# grep -Eoirh '<(a|img)\s+[^>]+>' ../_site | grep -Poi '(?<=src=|href=)("[^"]*"|'"'[^']*'|"'[^> ]*)' | sed -e 's|^["'"'"'] *||' -e 's| *["'"'"']$||' | sort -u > old_urls.txt

# perl moveuploads.pl ~/Dropbox\ \(ASU\)/PandasThumb/OldSite/ ../_site < old_urls.txt > moved_files.txt

use strict;
use warnings;
use v5.24;

use File::Type;
use File::Copy;
use URI::Encode qw(uri_encode uri_decode);

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

	$path = uri_decode($path);

	# file already exists
	next if(-f "$output_dir$path");

	# try renaming _ to -
	my $newpath = $path =~ tr/_/-/r;
	if(-f "$output_dir$newpath") {
		$newpath = uri_encode($newpath);
		say("$old\t$newpath");
		next;
	}

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
			unless(-f "$destdir$file") {
	 			copy($ipath, $destdir) or die;
	 		}
	 		$newpath = uri_encode("/uploads/$year/$file");
			say("$old\t$newpath");
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

