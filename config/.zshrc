OS=$(uname -s)

case "$OS" in
    Darwin*)
        # macOS用の環境変数
        . /opt/homebrew/opt/asdf/libexec/asdf.sh
        . /opt/homebrew/opt/antigen/share/antigen/antigen.zsh
        ;;
    *)
        echo "Unsupported OS: $OS"
        ;;
esac

source ~/.zsh_aliases

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

eval "$(starship init zsh)"
