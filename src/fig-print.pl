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

my $ifig = `cd /home/leon/note/fig/ && ls -rt | tail -n1`;
chomp($ifig);
print("viewnior /home/leon/note/fig/'$ifig'");

