#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: syn.pl
#
#        Usage: ./syn.pl  
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
#      Created: 2021年02月27日 00时58分21秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;

my $m = shift;
system("tmux set synchronize-panes");

if ($m) {
    system("tmux source ~/.tmux.conf.1");
} else {
    system("tmux set pane-border-style 'fg=#ff0000 bg=default'");
    system("tmux set window-style 'bg=default fg=#ff0000'");
    system("tmux set window-active-style 'bg=default fg=#ff0000'");
}
