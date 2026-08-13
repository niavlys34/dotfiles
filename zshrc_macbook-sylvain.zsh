# zshrc local de macbook-sylvain

# PATH
LOCAL_BIN="$HOME/.local/bin"
MACPORTS="/opt/local/bin:/opt/local/sbin"
SUBL="/Applications/Sublime Text.app/Contents/SharedSupport/bin"

export PATH="$LOCAL_BIN:$MACPORTS:$SUBL:$PATH"

# alias
alias ls="ls -laG"

alias vpnup="sudo wg-quick up wg0"
alias vpndn="sudo wg-quick down wg0"