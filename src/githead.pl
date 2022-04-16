my $t = `timeout 2 git status -s 2>&1`;
$t =~ s/\n.*//;

$t =~ s/repository.*/repository/;

$t =~ s/(.{21}).*/$1.../g;

print($t);
