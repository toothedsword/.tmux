my $t = `git status -s`;

$t =~ s/\n/|/g;
$t =~ s/^\s*//;
$t = "|$t";
$t =~ s/\s[^\|]\|//g;
print($t);
