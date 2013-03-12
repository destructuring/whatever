#!/usr/bin/env perl

use Encode::Detect::Detector;

open(FILE, $ARGV[0]) or die "Couldn't open file: $!";
$octets= join("", <FILE>); 
close FILE;
my $charset = Encode::Detect::Detector::detect($octets);

print "$charset\n"
