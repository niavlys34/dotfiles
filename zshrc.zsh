# pure
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting"
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -f ~/zshrc_local.zsh ]] && source ~/zshrc_local.zsh
[[ -f ~/dotfiles/zshrc_aliases.zsh ]] && source ~/dotfiles/zshrc_aliases.zsh