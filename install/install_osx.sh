ln -fnsv "$SCRIPT_DIR/install/.Brewfile" "$HOME"

source "$HOME/.zshrc"
source "$HOME/.zprofile"

brew bundle --global
