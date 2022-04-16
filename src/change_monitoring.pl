#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: change_monitoring.pl
#
#        Usage: ./change_monitoring.pl  
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
#      Created: 2021年03月29日 17时21分10秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;

my $wd = shift; 

my ($L,$sn,$wn,$pn) = $wd =~ /(.+)\|(.+)\:(.+)\.(.+)/;

system("echo '' > /home/leon/.tmux/src/pane_change");
my $info0 = 'xxxxxxxxxx';

while (1) {

    my $info = `tmux -L $L capture-pane -t $sn:$wn.$pn -pS -32768`;
    
    if ($info ne $info0 and $info0 !~ /^x+$/ ) {
        system("echo '$sn:$wn.$pn!!!!!' > /home/leon/.tmux/src/pane_change");
        die;
    }

    sleep(1);
    $info0 = $info;
}

