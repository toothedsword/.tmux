#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: test.pl
#
#        Usage: ./test.pl  
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
#      Created: 2021年04月23日 11时05分47秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

my $n = `tail -n1 ./num`;
`tmux select-pane`;
`tmux select-pane -P 'bg=default'` if $n == 0;
`tmux select-pane -P 'bg=0'` if $n == 1;
# `tmux select-pane -P 'bg=#ff0000'` if $n == 2;
# `tmux select-pane -P 'bg=#555555'` if $n == 3;
$n++;
$n = 0 if $n > 1;
`echo $n > ./num`;


