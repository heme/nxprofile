# PATH
export PATH=/usr/local/bin:$PATH

# SSH - Load Keys
source ~/nxprofile/ssh/start-ssh-agent.sh

# BASH COMPLETION
if [ -f `brew --prefix`/etc/bash_completion ]; then 
    . `brew --prefix`/etc/bash_completion 
fi

# INCLUDE .profile
if [ -f ~/.profile ]; then
   source ~/.profile
fi


# INCLUDE .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
