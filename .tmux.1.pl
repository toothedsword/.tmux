#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: .tmux.1.pl
#
#        Usage: ./.tmux.1.pl  
#
#  Description: 
#
#      Options: ---
# Requirements: ---
#         Bugs: ---
#        Notes: ---
#       Author: Liang Peng (...), pengliang@piesat
# Organization: ...
#      Version: 1.0
#      Created: 09/29/2020 12:45:35 PM
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;

my ($sec,$min,$hour,$mday,$mon,$year_off,$wday,$yday,$isdat) = localtime;

my $h1 = $sec % 4;
$h1++;
if ($h1 > 4) {
    $h1 = 1;
}
if ($h1 == 1) {
    print "🌐";
}
if ($h1 == 2) {
    print "🌏";
}
if ($h1 == 3) {
    print "🌍";
}
if ($h1 == 4) {
    print "🌎";
}
