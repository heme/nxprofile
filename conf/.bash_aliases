# OTHER
alias cls="clear" #windows cmd habbit

# SAFE
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# LIST
alias la="ls -lah"
alias ll="ls -lh"
alias lh="ls -ld .??*"
alias tree="tree -C"

# PROFILE
alias epro="vi ~/.bash_profile"
alias lpro="source ~/.bash_profile"

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