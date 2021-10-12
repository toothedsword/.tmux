#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: roma.pl
#
#        Usage: ./roma.pl  
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
#      Created: 2021年03月19日 11时10分56秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

$i = shift;

(@n) = '|⓿ |Mission:-❶ |❷ |❸  |❹  |❺  |❻ |❼ |❽|❾ | ❿|'=~ /([^\|\s]+)/g;
$n[$i] =~ s/-/ /g;
print "$n[$i] ";
