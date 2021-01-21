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

my @fmt = (
    'c    Weather condition',
    'C    Weather condition textual name',
    'h    Humidity',
    't    Temperature (Actual)',
    'f    Temperature (Feels Like)',
    'w    Wind',
    'l    Location',
    'm    Moonphase 🌑🌒🌓🌔🌕🌖🌗🌘',
    'M    Moonday',
    'p    precipitation (mm)',
    'o    Probability of Precipitation',
    'P    pressure (hPa)',
    'D    Dawn*',
    'S    Sunrise*',
    'z    Zenith*',
    's    Sunset*',
    'd    Dusk*',
);

my $fmt = '|';
for my $f (@fmt) {
    $f =~ s/(.).+/$1/;
	$fmt = "${fmt}\%$f\+|";
}

my $cmd = "curl wttr.in?format=\"$fmt\"";
my @var = `$cmd` =~ /([^\|]+)/g;

my $ct = $var[1];
my $cf = 'sunny';
if ($ct =~ /[^\s]/) {
    if ($ct =~ /sunny/i or $ct =~ /clear/i) {
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
}
$var[1] = $ct;
my $ic = `cat $cf`;
$ic =~ s/\s//;

open (my $out,">wttr_new");
my $i = -1; 
for my $f (@fmt) {
	$i++;
    $f =~ s/(.).+/$1/;
    my $v = $var[$i];
    $v =~ s/^\s+//g;
    $v =~ s/\s+$//g;
	print $out "$f=$v\n";
}
print $out "i=$ic";
close ($out);
