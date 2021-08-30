#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: source_.tmux.conf.o.pl
#
#        Usage: ./source_.tmux.conf.o.pl  
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
#      Created: 2021年02月17日 17时34分25秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;

my $t = `cat ~/.tmux/.tmux.conf.o | grep 'file:'`;
my ($n) = $t =~ /conf\.(\d+)/;
my $file;

$n = $n+1;
if (-e <\~/.tmux/.tmux.conf.$n>) {
    $file = "~/.tmux/.tmux.conf.$n";
} else {
    $file = "~/.tmux/.tmux.conf.0";
}
`ln -sf $file ~/.tmux/.tmux.conf.o`;
`tmux source-file ~/.tmux/.tmux.conf.o`;
