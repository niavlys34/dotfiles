# mise en place :
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting"
# git clone https://github.com/niavlys34/dotfiles.git "$HOME/dotfiles"
# ln -s $HOME/dotfiles/zshrc_commun.zsh $HOME/.zshrc

# si il n'existe pas encore,
# echo "# zshrc local de $(hostname -s)" > $HOME/dotfiles/zshrc_$(hostname -s).zsh

# pure
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# alias communs à toutes les machines
alias c='clear'
alias ww='which'
alias ..='cd ..'
alias ...='cd ../..'
alias h='cd ~'

# zshrc propre à la machine
MY_HOST_NAME=$(hostname -s)
[[ -f "$HOME/dotfiles/zshrc_$MY_HOST_NAME.zsh" ]] && source "$HOME/dotfiles/zshrc_$MY_HOST_NAME.zsh"
