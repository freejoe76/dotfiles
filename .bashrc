alias bp='vi ~/.bashrc'
alias bps='source ~/.bashrc'


alias sockit='ln -s /Applications/MAMP/tmp/mysql/mysql.sock /tmp/mysql.sock && sudo ln -s /Applications/MAMP/tmp/mysql/mysql.sock /var/mysql/mysql.sock'
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=25500
HISTIGNORE="&:ls:[bf]g:exit"
HISTTIMEFORMAT="%F %T "
PROMPT_COMMAND='history -a'
HISTCONTROL=ignoredups:ignorespace

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

ex () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       rar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjf $1      ;;
            *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# nh - run command detached from terminal and without output
# Usage: nh <command>
nh() {
    nohup "$@" &>/dev/null &
}

# load virtualenvwrapper for python (after custom PATHs)
venvwrap="virtualenvwrapper.sh"
/usr/bin/which -s $venvwrap
if [ $? -eq 0 ]; then
    venvwrap=`/usr/bin/which $venvwrap`
    source $venvwrap
fi
