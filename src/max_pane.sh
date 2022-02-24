np=$(tmux list-panes | wc -l)

if [ $np > 1 ]; then
    echo "$np"
    tmux resize-pane -Z
else
    echo "1 pane"
fi

