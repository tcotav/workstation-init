export EDITOR=vim

# fix history
export HISTSIZE=1000000

# unified bash history
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r"

set -o vi
