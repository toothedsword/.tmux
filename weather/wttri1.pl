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

my $cf = 'sunny'; # 'them';
my ($city,$ct,$w,$h,$p,$t,$S,$D) = `curl wttr.in/Beijing?format="%m+%l|+%C|+%w|+%h|+%P|+%t|+%S|+%D"` =~ /([^\|]+)/g;
my $day = 0;
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
my ($d1,$d2,$d3) = $D =~ /(\d\d):(\d\d):(\d\d)/;
$d1 = $d1+12;
$D = "$d1:$d2:$d3";
$S =~ s/\s//g;
my $lt = sprintf("%02d:%02d:%02d",$hour,$min,$sec);
print "$lt,$S,$D";
if ($lt gt $S and $lt lt $D) {
    $day = 1;
}

if ($ct =~ /[^\s]/) {
    if ($ct =~ /sunny/i or ($ct =~ /clear/i and $day == 1)) {
        $cf = 'sunny';
        $ct = '';
    }
    if ($ct =~ /sunny/i and $day == 0) {
        $cf = 'clear';
        $ct = '';
    }
    if ($ct =~ /clear/i and $day == 0) {
        $cf = 'clear';
        $ct = '';
    }
    if ($ct =~ /rain/i and $ct =~ /lightn/i ) {
        $cf = 'lightningrain';
        $ct = '';
    }
    if ($ct =~ /part/i and $ct =~ /cloud/i ) {
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
    $city =~ s/\s//g;
    $w =~ s/km\/h//;
    $p =~ s/hPa//;
    $t =~ s/°C/°/;
    $t =~ s/\+//;
    $h =~ s/\s//g;
    $p =~ s/\s//g;
    $w =~ s/\s//g;
    my $sed1 = 'sed ":a;N;s/\n//g;$!ba"';
    my $sed2 = 'sed "s/\s\s/ /g"';
    my $sed3 = 'sed "s/ *| *//g"';
    my $cmd = "(cat $cf ;echo '$ct$w 🧭$p🌡️ $t💧$h') | $sed1 | $sed2 | $sed3 > wttr.out1";
    system($cmd);
    my $cmd = "echo '$city' | $sed1 > wttr.out2";
    system($cmd);
} else {
    
}
