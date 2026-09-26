# zshrc local de macbook-sylvain

# PATH
# LOCAL_BIN="$HOME/.local/bin"
MACPORTS="/opt/local/bin:/opt/local/sbin"
SUBL="/Applications/Sublime Text.app/Contents/SharedSupport/bin"
WINE="/Applications/Wine Stable.app/Contents/Resources/wine/bin"

export PATH="$MACPORTS:$SUBL:$WINE:$PATH"

# alias divers
alias ls="ls -laG"

# alias subl
alias subldot="subl $HOME/.dotfiles"
alias sublwg="subl /opt/local/etc/wireguard/wg0.conf"

# alias vpn
alias vpnup="sudo wg-quick up wg0"
alias vpndn="sudo wg-quick down wg0"

# alias cm
alias cm="wine $HOME/.wine/drive_c/Program\ Files\ \(x86\)/Championship\ Manager\ 01-02/cm0102_GDI.exe"
alias scout="wine $HOME/Desktop/Championship\ Manager\ 01-02/cms/CMScout.exe"