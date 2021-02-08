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

my $ifig = `cd ~/ && ls -rt | grep Screenshot | tail -n1`;
chomp($ifig);
my $ofig = $ifig;
$ofig =~ s/Screen.*from\s*//;
$ofig =~ s/\s/-/g;
$ofig = "/home/leon/doc/note/fig/$ofig";

system("cp ~/'$ifig' $ofig");
# system("echo 'viewnior $ofig' > ~/1.txt");
# system("xclip -o -sel clip ~/1.txt");
# system("echo test | xclip -sel clip");
print("viewnior $ofig");
