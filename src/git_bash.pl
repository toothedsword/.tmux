#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: git.pl
#
#        Usage: ./git.pl  
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
#      Created: 2021年02月08日 13时58分07秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;

my $pcp = shift;
$pcp = `pwd` if !defined($pcp);
chdir($pcp);

my $t = '🥕'; #'ᚠ';
my $ba = `git branch`;
my ($bc) = $ba =~ /\*\s*([^\s]+)\s*/;
print("$t$bc") if defined($bc);
system("tmux setw -g window-status-current-format ' #{?pane_synchronized,🔗,}#I #W#{?window_zoomed_flag,🧷,} $t$bc'");

