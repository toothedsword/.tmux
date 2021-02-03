my $np=`tmux list-panes | wc -l`;
chomp($np);

if ($np > 1) {
    system("tmux resize-pane -Z");
} else {
    system("tmux split-window -v");    
    system("tmux split-window -h");    
}

