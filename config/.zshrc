OS=$(uname -s)

case "$OS" in
    Darwin*)
        # macOS用の環境変数
        . /opt/homebrew/opt/asdf/libexec/asdf.sh
        ;;
    *)
        echo "Unsupported OS: $OS"
        ;;
esac

eval "$(starship init zsh)"
