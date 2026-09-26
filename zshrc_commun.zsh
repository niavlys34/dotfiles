# mise en place :
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting"
# git clone https://github.com/niavlys34/dotfiles.git "$HOME/dotfiles"
# ln -s $HOME/.dotfiles/zshrc_commun.zsh $HOME/.zshrc

# si il n'existe pas encore,
# echo "# zshrc local de $(hostname -s)" > $HOME/.dotfiles/zshrc_$(hostname -s).zsh

# pure
fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
prompt pure

# zsh-syntax-highlighting
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# alias divers
alias c="clear"
alias e="exit"
alias h="cd $HOME"
alias ww="which"
alias ..="cd .."
alias ...="cd ../.."

# alias git
alias gfl="git fetch && git log HEAD..origin/main --oneline"

# alias super message
alias smsg="bash $HOME/.dotfiles/fun/supermsg.sh"

# alias edit zshrc
alias editzc="nano $HOME/.dotfiles/zshrc_commun.zsh"
alias editzh="nano $HOME/.dotfiles/zshrc_$(hostname -s).zsh"

# fonctions
function f() { find . -iname "*$1*" ${@:2} 2>/dev/null }

# affichage chat et message
bash $HOME/.dotfiles/fun/aachat.sh 70
smsg -w "host : $(hostname -s) - Miaou !"

# zshrc propre à la machine
MY_HOST_NAME=$(hostname -s)
[[ -f "$HOME/.dotfiles/zshrc_$MY_HOST_NAME.zsh" ]] && source "$HOME/.dotfiles/zshrc_$MY_HOST_NAME.zsh"
