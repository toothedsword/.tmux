#!/usr/bin/env perl
# /**---------------------------------------------------------------------------
#
#         File: wttr.pl
#
#        Usage: ./wttr.pl  
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
#      Created: 09/28/2020 09:04:38 AM
#     Revision: ---
# ----------------------------------------------------------------------------*/

if (0) {
    open (my $in, "<them");
    my $m = join('',<$in>);
    close ($in);
}

while (1) {
    my $cf = 'them';
    my ($city,$ct,$w,$h,$p,$t) = `curl wttr.in?format="%m+%l|+%C|+%w|+%h|+%P|+%t"` =~ /([^\|]+)/g;
    if ($ct =~ /sunny/i) {
        $cf = 'sunny';
        $ct = '';
    }
    if ($ct =~ /rain/i and $ct =~ /lightn/i ) {
        $cf = 'lightningrain';
        $ct = '';
    }
    if ($ct =~ /part/i and $w =~ /cloud/i ) {
        $cf = 'partlycloudy';
        $ct = '';
    }
    if ($ct =~ /lightn/i) {
        $cf = 'lightning';
        $ct = '';
    }
    if ($ct =~ /cloudy/i) {
        $cf = 'cloudy';
        $ct = '';
    }
    if ($ct =~ /rain/i) {
        $cf = 'rain';
        $ct = '';
    }
    if ($ct =~ /snow/i) {
        $cf = 'snow';
        $ct = '';
    }
    if ($ct =~ /haze/i) {
        $cf = 'sunny';
    }
    $city =~ s/,.*$//;
    $w =~ s/km\/h//;
    $p =~ s/hPa//;
    $t =~ s/°C/°/;
    $t =~ s/\+//;
    $h =~ s/\s//g;
    $p =~ s/\s//g;
    $w =~ s/\s//g;
    my $sed1 = 'sed ":a;N;s/\n//g;$!ba"';
    my $sed2 = 'sed "s/\s\s/ /g"';
    my $sed3 = 'sed "s/|/ /g"';
    my $cmd = "(cat $cf ;echo '  $ct$w 🧭$p 🌡️ $t💧$h') | $sed1 | $sed2 > wttr.out1";
    system($cmd);
    my $cmd = "echo '$city' | $sed1 > wttr.out2";
    system($cmd);
}
