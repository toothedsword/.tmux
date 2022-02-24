my $m = shift;
my $np=`tmux list-panes | wc -l`;
chomp($np);

if ($np > 1) {
    system("tmux resize-pane -Z");
    if ($m) {
        system("tmux set window-active-style 'fg=6 default'");        
    } else {
        system("tmux set window-active-style 'fg=#ff0000 bg=default'");        
    }
} else {
    # system("tmux send-keys C-b z Enter");
    # system("tmux send-keys C-DoubleClick1Pane Enter");
    system("tmux split-window -v");    
    system("tmux split-window -h");    
}
