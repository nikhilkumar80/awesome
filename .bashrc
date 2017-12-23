# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# MY personal Aliases
alias showdiff='svn diff --diff-cmd ~/.vim/vimdiff-svn-wrapper'
alias tailerr='tail -f /home/y/logs/yapache/error'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'



# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# To enable automatic title updating when jumping around with ssh
blue='\e[0;34m'
red='\e[0;31m'
NC='\e[0m'
if [ "x$YROOT_NAME" != "x" ]; then
    titlebar='\[\e]2;\h:$YROOT_NAME \W\a'
    export PS1="\[${titlebar}${blue}\] \u@\h:$YROOT_NAME \w \[${red}\]\$\[${NC}\]"
else
    titlebar='\[\e]2;\h \W\a'
    export PS1="\[${titlebar}${blue}\] \u@\h \w \[${red}\]\$\[${NC}\]"
fi





