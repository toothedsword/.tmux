my $np=`tmux list-panes | wc -l`;
chomp($np);

if ($np > 1) {
    system("tmux resize-pane -Z");
}

