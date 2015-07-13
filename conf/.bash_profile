# PATH
export PATH=/usr/local/bin:$PATH

# SSH - Load Keys
source ~/nxprofile/ssh/start-ssh-agent.sh

# DOCKER
if hash boot2docker 2>/dev/null; then
    boot2docker up
    eval "$(boot2docker shellinit)"
fi

# INCLUDE .profile
if [ -f ~/.profile ]; then
   source ~/.profile
fi


# INCLUDE .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
