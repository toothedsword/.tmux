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
#      Created: 2021年02月26日 21时02分40秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;
use Shell;

my $t = shift;
system("echo $t >> /home/leon/.tmux/src/test.out");
