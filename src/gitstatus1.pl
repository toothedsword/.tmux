my $t = `git status -s`;

$t =~ s/\n/|/g;
$t =~ s/^\s*//;
$t =~ s/\s[^\|]+\|//g;
$t =~ s/(.)\1+/$1/g;
print($t);
