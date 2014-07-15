export EDITOR=vim

# fix history
export HISTSIZE=10000

# unified bash history
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r"
