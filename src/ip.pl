#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: ip.pl
#
#        Usage: ./ip.pl  
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
#      Created: 2021年03月20日 01时12分30秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

my $ip = `ifconfig`;

$ip =~ s/\n/ /g;
# print($ip);

my (@ip) = $ip =~ /([^\s]+:\s*flags=(?:(?!flags=).)+?\d+\.\d+\.\d+\.\d+)/g;

my $rt = '';
for my $ip (@ip) {
    $ip =~ s/^([^\s]+:)\s*.+?(\d+\.\d+\.\d+\.\d+)/$1$2/; 
    $rt = "$rt$ip|" if $ip =~ /^[ew]/;
}
$rt =~ s/\|\s*$//;
$rt =~ s/([\d\w]{1})[\d\w]+:/$1:/g;
$rt =~ s/e:/ 🖧 /g;
$rt =~ s/w:/ 🕸   /g;
$rt =~ s/\|//g;
$rt =~ s/  //g;
print($rt);
