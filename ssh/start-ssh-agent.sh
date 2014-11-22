SSH_ENV=$HOME/.ssh/env
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ADD_KEYS=$DIR/ssh-add.sh

# load addition kays
function add_keys {
    if [ -f "${ADD_KEYS}" ]; then
        echo "loading additional keys from: ${ADD_KEYS}";
        source ${ADD_KEYS};
    fi
}

# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo "...done"
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
    add_keys
}

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
