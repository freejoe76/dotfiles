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

# Edit the last-edited file in the directory you're in.
alias vil='vi `ls -t | head -n 1`'
#alias vim='/usr/loc

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

#export WORKON_HOME=$HOME/code/.virtualenvs
#export PROJECT_HOME=$HOME/code
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# load virtualenvwrapper for python (after custom PATHs)
venvwrap="virtualenvwrapper.sh"
/usr/bin/which -s $venvwrap
if [ $? -eq 0 ]; then
    venvwrap=`/usr/bin/which $venvwrap`
    source $venvwrap
fi
#source /usr/local/bin/virtualenvwrapper.sh

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
alias bps='source ~/.bashrc'
alias bp='vi ~/.bashrc'
alias ss='source source.bash || source ../source.bash || source ../../source.bash'
alias cs='cat source.bash || cat ../source.bash || cat ../../source.bash'
alias crimes='cd ~/work/crime; ss; cd crimeparse'
alias sites='cd ~/work/crimesite; ss; cd site/public'
alias sads='cd ~/sad_ebook/; ss'
alias phperr='tail -f /Applications/MAMP/logs/php_error.log'
alias sockit='ln -s /Applications/MAMP/tmp/mysql/mysql.sock /tmp/mysql.sock && sudo ln -s /Applications/MAMP/tmp/mysql/mysql.sock /var/mysql/mysql.sock'
export WORKON_HOME=~/Env
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
# Edit the last-edited file in the directory you're in.
alias vil='vi `ls -t | head -n 1`'
alias vim='/usr/local/bin/vim'

#eval $(thefuck --alias)
git config --global core.editor /usr/bin/vim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
