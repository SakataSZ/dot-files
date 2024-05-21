#!/bin/zsh

OS=$(uname -s)

case "$OS" in
    Darwin*)
        # macOS用の環境変数
        . "$HOMEBREW_REPOSITORY/opt/asdf/libexec/asdf.sh"
        . "$HOMEBREW_REPOSITORY/opt/antigen/share/antigen/antigen.zsh"
        ;;
    *)
        echo "Unsupported OS: $OS"
        ;;
esac

source ~/.zsh_aliases

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen apply

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

eval "$(starship init zsh)"
