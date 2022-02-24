#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: battery.pl
#
#        Usage: ./battery.pl  
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
#      Created: 2020年10月02日 21时00分41秒
#     Revision: ---
# ----------------------------------------------------------------------------*/

use strict;
use warnings;
use utf8;

my $re = `(upower -i /org/freedesktop/UPower/devices/battery_BAT0;upower -i /org/freedesktop/UPower/devices/battery_BAT1)|grep percentage|sed "s/percentage://"|tr "\n" " "|sed "s/ //g"|sed "s/%/+/"|sed "s/%//"`;
print $re;
