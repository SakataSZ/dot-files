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

asdf_update_java_home() {
    local java_path
    java_path="$(asdf which java)"
    if [[ -n "${java_path}" ]]; then
        export JAVA_HOME
        JAVA_HOME="$(dirname "$(dirname "${java_path:A}")")"
        export JDK_HOME=${JAVA_HOME}
    fi
}
asdf_update_java_home

source ~/.zsh_aliases
source <(fzf --zsh)

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen apply

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

eval "$(starship init zsh)"
