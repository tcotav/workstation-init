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

# golang
export GOROOT=/usr/local/opt/go/libexec

# docker stuff
export DOCKER_CERT_PATH=/Users/jfrancis/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
