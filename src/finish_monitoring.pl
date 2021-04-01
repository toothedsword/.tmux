#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: finish_monitoring.pl
#
#        Usage: ./finish_monitoring.pl  
#
#  Description: 
#
#      Options: ---
# Requirements: ---
#         Bugs: ---
#        Notes: ---
#       Author: Liang Peng (...), pengliang@piesat.cn
# Organization: ...
#      Version: 1.0
#      Created: 2021年03月29日 17时21分10秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;

my $file = shift;

if (-e $file) {
    my $pane = `cat $file`;
    chomp($pane);
    my ($t, $p) = $pane =~ /([^\s]+)\s+([^\s]+)/;

    system("echo '' > /home/leon/.tmux/src/pane_finish");
    my $info = `tmux -L $t capture-pane -t $p -pS -32768`;
    $info =~ s/\n/\|/g;
    $info =~ s/\|[^\|]+\sWindows\:\s[^\|]+/\|/;
    # system("echo '$info' > /home/leon/info");
    if ($info =~ /\|[\<\_\#]{2}[\|]*$/) {
        # system("rm -rf $file");
        print("$t$p🏷️ ");
    } elsif ($info =~ /\[[^\[\]\|]\]\$\s*\|*\s*$/) {
        print("$t$p🏷️ ");
    } else {
        print("$t$p");
    }
}
