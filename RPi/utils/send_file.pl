#!/usr/bin/perl

use utils::IMDBparser;
use warnings;
use strict;
use Cwd;

my $line;
my @data;
my $ctu=0;
my $file_path;

$file_path=cwd()."/".$ARGV[0];
$file_path=~s|\./||g;

open(my $fh, $file_path) or die "$file_path: $!";

$ctu=0;
while(!eof($fh)){
	defined($line=<$fh>) or die "Error reading file";
	@data=$line=~/(.{1,40})/g;
	
	foreach(@data){
		if($_){
			$_=~s/[\t\n\r]//g;
			if(length($_)>0){
#				print $ctu.":".length($_)."=> ".$_."\n";
				system "wget -O- 192.168.0.102/goform/ReadWrite?redirect=\"/value.asp\"\\&write=1\\&variable=Strings[".$ctu."]\\&value=". IR::IMDB::Parser::urlencode($_) ." 1>/dev/null 2>/dev/null";
				$ctu++;
			}
		}
	}
	system "wget -O- 192.168.0.102/goform/ReadWrite?redirect=\"/value.asp\"\\&write=1\\&variable=Limit\\&value=". IR::IMDB::Parser::urlencode($ctu-3) ." 1>/dev/null 2>/dev/null";
}
