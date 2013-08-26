# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=25500
HISTIGNORE="&:ls:[bf]g:exit"
HISTTIMEFORMAT="%F %T "
PROMPT_COMMAND='history -a'
HISTCONTROL=ignoredups:ignorespace
