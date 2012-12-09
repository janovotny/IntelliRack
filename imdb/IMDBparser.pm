package IR::IMDB::Parser;
use strict;
use XML::Simple;
use LWP::Simple;

sub urlencode {
	my $s = shift;
	$s =~ s/([^A-Za-z0-9])/sprintf("%%%02X", ord($1))/seg;
	return $s;
}

sub urldecode {
	my $s = shift;
	$s =~ s/\%([A-Fa-f0-9]{2})/pack('C', hex($1))/seg;
	return $s;
}

sub find_movie($){

	my $search_string=$_[0];	
	my $xml_data=ducky_search($search_string);

	if(length($xml_data) > 0){
		return XMLin($xml_data, ForceArray=>['item']);
	}
}

sub ducky_search($){
	my $browser = LWP::UserAgent->new();
	$browser->agent('Mozilla/5.0 (X11; U; FreeBSD i386; en-US; rv:9.9.9.9) Gecko/20079999 Firefox/5.0.0.1');

	my $fail_counter=0;
	my $ret="";
	my $req = $browser->get("http://duckduckgo.com/?q=".urlencode("site:imdb.com " . $_[0] ." !"))
		or die "Unable to get document: $!";

	$req=$req->content;

	if($req=~/www\.imdb\.com/){
		$req=~s/title\?/tt/ig;
		$req=~s/^.*(tt[0-9]+).*$/$1/;
		print "Found imdb id: ".$req."\n";

		while($fail_counter<3){
			$fail_counter++;
			($ret=$browser->get("http://imdbapi.org/?type=xml&plot=full&episode=0&id=".$req)) and $fail_counter=4;
			#print "http://imdbapi.org/?type=xml&plot=full&episode=0&id=".$req;
		}
	}
	$ret=$ret->content;
	if($fail_counter!=4){ print "\nFAILED TO LOAD DATA\n"; exit -1; }
	return $ret;
}

1;
