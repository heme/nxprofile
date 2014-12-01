# PATH
export PATH=/usr/local/bin:$PATH

# SSH - Load Keys
source ~/nxprofile/ssh/start-ssh-agent.sh

# INCLUDE .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi