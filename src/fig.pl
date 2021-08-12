#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: fig.pl
#
#        Usage: ./fig.pl  
#
# Description: copy figure path to clipboard 
#
#      Options: ---
# Requirements: ---
#         Bugs: ---
#        Notes: ---
#       Author: Liang Peng (...), pengliang@piesat
# Organization: ...
#      Version: 1.0
#      Created: 2021年02月04日 18时24分29秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;
# system("gnome-screenshot");

my $ifig = `cd ~/Pictures/ && ls -rt | tail -n1`;

chomp($ifig);
my $ofig0 = $ifig;
$ofig0 =~ s/Screen.*from\s*//;
$ofig0 =~ s/\s/-/g;
my $ofig = "/home/leon/note_solid/fig/$ofig0";

if (-e $ofig) {
	my ($sec,$min,$hour,$mday,$mon,$year) = localtime();
	$year = $year+1900;
	$mon ++; 
	my $time = "$year-$mon-${mday}_$hour-$min-$sec";
	$ofig = "/home/leon/note_solid/fig/$time.$ofig0";
}

system("cp ~/Pictures/'$ifig' $ofig");
# system("echo 'viewnior $ofig' > ~/1.txt");
# system("xclip -o -sel clip ~/1.txt");
# system("echo test | xclip -sel clip");
print("viewnior $ofig");
