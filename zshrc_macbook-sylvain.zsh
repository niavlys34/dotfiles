# zshrc local de macbook-sylvain

# PATH
LOCAL_BIN="$HOME/.local/bin"
MACPORTS="/opt/local/bin:/opt/local/sbin"
SUBL="/Applications/Sublime Text.app/Contents/SharedSupport/bin"
WINE="/Applications/Wine Stable.app/Contents/Resources/wine/bin"

export PATH="$LOCAL_BIN:$MACPORTS:$SUBL:$WINE:$PATH"

# alias
    # Divers
alias ls="ls -laG"

    # edit zshrc (subl)
alias sublzh="subl $HOME/dotfiles/zshrc_$(hostname -s).zsh"

    # VPN
alias vpnup="sudo wg-quick up wg0"
alias vpndn="sudo wg-quick down wg0"

    # CM
alias cm="wine $HOME/.wine/drive_c/Program\ Files\ \(x86\)/Championship\ Manager\ 01-02/cm0102_GDI.exe"
alias scout="wine $HOME/Desktop/CM0102/cms/CMScout.exe"