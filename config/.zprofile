#!/bin/zsh

OS=$(uname -s)

case "$OS" in
    Darwin*)
        # macOS用の環境変数
        eval "$(/opt/homebrew/bin/brew shellenv)"
        ;;
    *)
        echo "Unsupported OS: $OS"
        ;;
esac
