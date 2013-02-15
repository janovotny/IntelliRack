#!/usr/bin/perl

#****h* RPi/CreateTempDbEntry
# NAME
# 	CreateTempDbEntry -- Functions to order movie data 
# FUNCTION
# 	This module analyses and interpretes the data fetched by find_movie.
# SOURCE

use Data::Dumper;
use IMDBparser;
use warnings;

my $db_entry="";
#my $ETX=chr(0x3);
#my $EOT=chr(0x4);
#my $ACK=chr(0x6);

my $ETX="; ";
my $EOT="\n";
my $ACK="\0";

my $movie_ref=(IR::IMDB::Parser::find_movie($ARGV[0]));
my %movie=%$movie_ref;
my $temp;

open(my $fh, '>', 'NonConfirmedEntry');

#print Dumper($movie{'item'}[0]);
$temp=$movie{'item'}[0];
%movie=%$temp;

#title
if($movie{'title'}){
	$db_entry.=$movie{'title'};
} else {
	$db_entry.=$ARGV[0];
}
$db_entry.=$EOT;

$db_entry.="Title: ";
if($movie{'title'}){
	$db_entry.=$movie{'title'};
} else {
	$db_entry.=$ARGV[0];
}
$db_entry.=$EOT;

#actors
if($movie{'actors'}){
	$db_entry.="Actors: ";
	$temp=$movie{'actors'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}

#also_known_as
if($movie{'also_known_as'}){
	$db_entry.="Also known as: ";
	$temp=$movie{'also_known_as'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}

#country
if($movie{'country'}){
	$db_entry.="Country: ";
	$temp=$movie{'country'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}

#directors
if($movie{'directors'}){
	$db_entry.="Directors: ";
	$temp=$movie{'directors'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}

#episodes
if($movie{'episodes'}){
	$db_entry.="Episodes: ";
	$temp=$movie{'episodes'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}

#film_locations
if($movie{'film_locations'}){
	$db_entry.="Locations: ";
	$temp=$movie{'film_locations'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}

#genres
if($movie{'genres'}){
	$db_entry.="Genres: ";
	$temp=$movie{'genres'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}

#imdb_id
#if($movie{'imdb_id'}){
#	$db_entry.=$movie{'imdb_id'};
#}
#$db_entry.=$EOT;

#imdb_url
#if($movie{'imdb_url'}){
#	$db_entry.=$movie{'imdb_url'};
#}
#$db_entry.=$EOT;

#language
if($movie{'language'}){
	$db_entry.="Language: ";	
	$temp=$movie{'language'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}
#plot
if($movie{'plot'}){
	$db_entry.="Plot: ";
	$db_entry.=$movie{'plot'};
	$db_entry.=$EOT;
}

#poster
#if($movie{'poster'}){
#	$db_entry.=$movie{'poster'};
#	$db_entry.=$EOT;
#}

#rated
#if($movie{'rated'}){
#	$db_entry.=$movie{'rated'};
#	$db_entry.=$EOT;
#}

#rating
if($movie{'rating'}){
	$db_entry.="IMDB-Rating: ";
	$db_entry.=$movie{'rating'};
	$db_entry.=$EOT;
}

#release_date
if($movie{'release_date'}){
	$db_entry.="Release date: ";
	$db_entry.=$movie{'release_date'};
	$db_entry.=$EOT;
}

#runtime
if($movie{'runtime'}){
	$db_entry.="Runtime: ";
	$temp=$movie{'runtime'}{'item'};
	for(@$temp){
		$db_entry.=$_.$ETX;
	}
	$db_entry.=$EOT;
}

#type
if($movie{'type'}){
	$db_entry.="Type: ";
	$db_entry.=$movie{'type'};
	$db_entry.=$EOT;
}

#writers
if($movie{'writers'}){
	$db_entry.="Writer: ";
	$temp=$movie{'writers'}{'item'};
	foreach(@$temp){
		$db_entry.=$_.$ETX;	
	}
	$db_entry.=$EOT;
}

#year
if($movie{'year'}){
	$db_entry.="Year: ";
	$db_entry.=$movie{'year'};
	$db_entry.=$EOT;
}

$db_entry.=$ACK;
print $fh $db_entry;

#*****

my $browser = LWP::UserAgent->new();
$browser->agent('Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:9.9.9.9) Gecko/20079999 Firefox/5.0.0.1');
my $req = $browser->get($movie{'poster'})
	or die "Unable to get document: $!";
$req=$req->content;

open(my $img ,">0.jpg");

print $img $req;
