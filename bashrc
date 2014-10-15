export EDITOR=vim

# fix history
export HISTSIZE=1000000

# unified bash history
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r"

set -o vi

if [[ -S "$SSH_AUTH_SOCK" && ! -h "$SSH_AUTH_SOCK" ]]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock;
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock;
