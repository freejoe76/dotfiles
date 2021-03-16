shopt -s extglob

export NODE_PATH="/usr/local/Cellar/node/0.10.31/lib/node_modules"

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/Applications/MAMP/Library/bin:/Users/joemurphy/pear/bin:/Users/joemurphy/pear/share/pear:$PATH"
export PATH="/Users/JosephMurphy/Library/Python/2.7/bin:$PATH"
export PATH="/usr/local/Cellar/libpq/11.0/bin:$PATH"

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=150000
HISTFILESIZE=125500
HISTIGNORE="&:ls:[bf]g:exit"
HISTTIMEFORMAT="%F %T "
PROMPT_COMMAND='history -a'
HISTCONTROL=ignoredups:ignorespace

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lowercase='for i in *; do mv $i `echo $i | tr [:upper:] [:lower:]`; done'

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

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
alias bps='source ~/.bashrc'
alias bp='vi ~/.bashrc'
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
# Edit the last-edited file in the directory you're in.
alias vil='vi `ls -t | head -n 1`'
alias vim='/usr/local/bin/vim'

#eval $(thefuck --alias)
git config --global core.editor /usr/bin/vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#source /usr/local/bin/virtualenvwrapper.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
