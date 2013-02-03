#!/usr/bin/perl

use Data::Dumper;
use IMDBparser;
use warnings;

my $db_entry="";
my $ETX=chr(0x3);
my $EOT=chr(0x4);
my $ACK=chr(0x6);
my $movie_ref=(IR::IMDB::Parser::find_movie($ARGV[0]));
my %movie=%$movie_ref;
my $temp;

open(my $fh, '>', 'NonConfirmedEntry');

#actors
$temp=$movie{'actors'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#also_known_as
$temp=$movie{'also_known_as'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#country
$temp=$movie{'country'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#directors
$temp=$movie{'directors'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#episodes
$temp=$movie{'episodes'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#film_locations
$temp=$movie{'film_locations'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#genres
$temp=$movie{'genres'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#imdb_id
if($movie{'imdb_id'}){
	$db_entry.=$movie{'imdb_id'};
}
$db_entry.=$EOT;

#imdb_url
if($movie{'imdb_url'}){
	$db_entry.=$movie{'imdb_url'};
}
$db_entry.=$EOT;

#language
$temp=$movie{'language'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#plot
if($movie{'plot'}){
	$db_entry.=$movie{'plot'};
}
$db_entry.=$EOT;

#poster
if($movie{'poster'}){
	$db_entry.=$movie{'poster'};
}
$db_entry.=$EOT;

#rated
if($movie{'rated'}){
	$db_entry.=$movie{'rated'};
}
$db_entry.=$EOT;

#rating
if($movie{'rating'}){
	$db_entry.=$movie{'rating'};
}
$db_entry.=$EOT;

#release_date
if($movie{'release_date'}){
	$db_entry.=$movie{'release_date'};
}
$db_entry.=$EOT;

#runtime
$temp=$movie{'runtime'}{'item'};
for(@$temp){
	$db_entry.=$_.$ETX;
}
$db_entry.=$EOT;

#title
if($movie{'title'}){
	$db_entry.=$movie{'title'};
}
$db_entry.=$EOT;

#type
if($movie{'type'}){
	$db_entry.=$movie{'type'};
}
$db_entry.=$EOT;

#writers
$temp=$movie{'writers'}{'item'};
foreach(@$temp){
	$db_entry.=$_.$ETX;	
}
$db_entry.=$EOT;

#year
if($movie{'year'}){
	$db_entry.=$movie{'year'};
}
$db_entry.=$EOT;

$db_entry.=$ACK;

my $browser = LWP::UserAgent->new();
$browser->agent('Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:9.9.9.9) Gecko/20079999 Firefox/5.0.0.1');
my $req = $browser->get($movie{'poster'})
	or die "Unable to get document: $!";
$req=$req->content;

open(my $img ,">0.jpg");

print $img $req;
print $fh $db_entry;
system "ffmpeg -y -i 0.jpg -vf scale=-1:200 0.png; rm 0.jpg"
