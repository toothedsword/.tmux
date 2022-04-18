# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# some more ls aliases
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
alias duh='du -h --max-depth=1'
alias pip='pip3 -i https://pypi.tuna.tsinghua.edu.cn/simple/ '
alias ads='ssh -XY  10.1.100.92'
alias wads='ssh -XY  -p 122 1.119.5.181'
alias left='ssh 192.168.1.101'
alias bl='ssh 10.1.6.71'
alias right='ssh 192.168.1.102'
alias center='ssh 192.168.1.103'
alias ccat='/home/leon/bin/ccat-dir/linux-amd64-1.1.0/ccat --color=always '
alias less='less -R '
alias df='df -x squashfs -x tmpfs -x devtmpfs'
alias s=screen

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
# export PROMPT_COMMAND=' __git_ps1 "\n[\e[33m][[\e[m]\A [\e[31m]\u[\e[m]@[\e[32m]\h [\e[34;01m]\l[\e[m] [\e[36m]\w[\e[m]" "[\e[33m]][\e[m]\n$ "'


# export PS1='\[\033[0;31m\]\u->\[\033[0m\]\[\033[0;34m\]$PWD/\[\033[0m\] \[\033[0;36m\]`date`\n◻◼ '
# export PS1='\[\033[0;31m\]\u->\[\033[0m\]\[\033[4;34m\]$PWD/\[\033[0m\] \[\033[0;36m\]`git.pl 2>/dev/null|sed "s/🎈//"`\n\[\033[0;36m\]`~/.bash/bash_run.pl 2>/dev/null`\[\033[0;35m\] ' 
# export PS1='\[\033[0;31m\]\u~>\[\033[0m\]\[\033[4;34m\]$PWD/\[\033[0m\] \[\033[0;36m\]\n\[\033[4;36m\]  \[\033[0;35m\] ' 
# `~/.bash/bash_run.pl 2>/dev/null` 
# export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \[\033[4;35m\]$PWD\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[1;32m\] ▶\[\033[3;0m\] '
export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \[\033[4;35m\]$PWD\[\033[0;32m\]$(__git_ps1)\n\[\033[0m\033[0;32m\]\[\033[0m\033[1;32m\]__\[\033[3;0m\] '


PATH="/home/leon/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/leon/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/leon/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/leon/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/leon/perl5"; export PERL_MM_OPT;

export EDITOR=vim

alias d31='ssh ads@10.24.237.31'
alias c8='ssh 10.1.6.117'
alias wc8='ssh -p 122 1.119.5.181'

alias nat='ssh -XY 9a730b6f1593ef51.natapp.cc -p 3377'
alias toothedsword='ssh toothedsword.natapp1.cc -p 3377'
alias tw='toothedsword'
alias v='viewnior '
alias em='emacs -nw'
alias unzip='unzip -O CP936'
alias dt="date | sed 's/[^0-9:][^0-9:]*/-/g' | sed 's/- *$//' | sed 's/://g'"
alias tmux2='tmux -L leon2 -f ~/.tmux.conf.leon2-hc'
alias tmux1='tmux -L leon1 -f ~/.tmux.conf.leon1-hc'
alias tmux0='tmux -L leon -f ~/.tmux.conf'
alias xml='xmllint --format'
alias dc=cd
alias r='rsync -avr  --progress --stats'
# alias fuck=thefuck
# eval "$(thefuck --alias)"
# eval $(thefuck --alias --enable-experimental-instant-mode)
# alias f=fuck

export PATH=/home/leon/bin:$PATH:/home/leon/src/docker-slim/dist_linux/
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'

# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#    tmux attach -t default || tmux new -s default
# fi

export TMUX_TMPDIR=~/.tmux/tmp
