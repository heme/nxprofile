# OTHER
alias cls="clear"
alias br="clear && echo \"------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\""
alias brr="clear && echo \"################################################################################################################################################################################################\""
alias .-="cd -"
alias .~="cd ~"
alias aliases="sublime --new-window ~/nxprofile/home/.bash_profile ~/.bash_profile ~/nxprofile/home/.bashrc ~/.bashrc ~/nxprofile/home/.bash_aliases ~/.bash_aliases"
alias realias="source ~/.bash_aliases"
alias speedtest="speedtest_cli"
alias hl="highlight"

# EPOCH
alias epochs="date -j \"+%s\""
alias epochs90="expr \$(date -j \"+%s\") - 7776000"

# NODE
alias npr="npm run"
alias y="yarn"

# SEARCH HISTORY
alias hist="history | grep"

# SAFE
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# LIST
alias la="ls -lah"
alias ll="ls -lh"
alias lh="ls -ld .??*"
alias lst="tree -C -L 2 --dirsfirst"
alias lsta="tree -a -C -L 2 -I \".git|.gitignore|.DS_Store\""
alias cll="clear && ll"

# GIT
alias g="git"

# DOCKER
alias d="docker"
alias dps="docker ps --format=\"table {{.ID}}\\t{{.Names}}\\t{{.Image}}\\t{{.Command}}\\t{{.Status}}\""
alias dpsa="docker ps -a --format=\"table {{.ID}}\\t{{.Names}}\\t{{.Image}}\\t{{.Command}}\\t{{.Status}}\""
# alias dpsa="docker ps -a --format=\"table {{.ID}}\\t{{.Names}}\\t{{.Status}}\""
alias dls="docker images"
alias dc="docker-compose"
alias dv="docker volume"
alias dvls="docker volume ls"
alias dl="docker logs --tail=50"
alias dlf="docker logs -f"
alias din="docker exec -it"
alias dtemp="docker run -i -t --rm=true"
alias drmi="docker rmi"
alias drmd='docker rmi $(docker images -qa -f "dangling=true")'

# HOSTS FILE
alias hosts="sudo vi /etc/hosts"

# PROCESSES & PORTS
alias oports="netstat -atp tcp | grep -i 'listen'"
alias aports="lsof -i TCP | grep LISTEN"

# OS SPECIFIC
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # *NIX
        # copy & paste
        alias pbcopy='xsel --clipboard --input'
        alias pbpaste='xsel --clipboard --output'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # OSX
        alias ql='qlmanage -p '
        # finder modifications
        alias showFullPath="defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder /System/Library/CoreServices/Finder.app"
        alias hideFulPath="defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder /System/Library/CoreServices/Finder.app"
        alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
        alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
# elif [[ "$OSTYPE" == "cygwin" ]]; then
#         # POSIX compatibility layer and Linux environment emulation for Windows
# elif [[ "$OSTYPE" == "msys" ]]; then
#         # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
# elif [[ "$OSTYPE" == "win32" ]]; then
#         # I'm not sure this can happen.
# elif [[ "$OSTYPE" == "freebsd"* ]]; then
#         # ...
# else
#         # Unknown.
fi
