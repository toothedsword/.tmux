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

(@n) = '/⓪ /① /② /③ /④ /⑤ /⑥ /⑦ /⑧ /⑨ /⑩ /⑪ /⑫ /⑬ /⑭ /⑮ /⑯ /⑰ /⑱ /⑲ /⑳' =~ /([^\/]+)/g;

print $n[$i];
