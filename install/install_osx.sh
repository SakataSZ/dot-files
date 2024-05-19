SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

ln -fnsv "$SCRIPT_DIR/.Brewfile" "$HOME"

brew bundle --global
