#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: change_git.pl
#
#        Usage: ./change_git.pl  
#
#  Description:i   
#
#      Options: ---
# Requirements: ---
#         Bugs: ---
#        Notes: ---
#       Author: Liang Peng (...), pengliang@piesat
# Organization: ...
#      Version: 1.0
#      Created: 2021年02月17日 16时59分17秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;

my $rt = `cat ~/bin/git.pl | grep Description`;

if ($rt =~ /simple_style_git/) {
    `ln -sf ~/.tmux/src/git.pl ~/bin/git.pl`;
} else {
    `ln -sf ~/.tmux/src/git_sp.pl ~/bin/git.pl`;
}

