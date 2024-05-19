# OS detection
get_os() {
	local uname="$(uname -s)"

	case "${uname}" in
	Darwin*) echo "osx" ;;
	*) echo "unknown" ;;
	esac
}

OS=$(get_os)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "\nSetting up defaults..."
source "$SCRIPT_DIR/default/default_$OS.sh"

echo "\nInstalling base applications..."
source "$SCRIPT_DIR/init/init_$OS.sh"

echo "\nLinking..."
source "$SCRIPT_DIR/link.sh"

echo "\nInstalling extras applications..."
source "$SCRIPT_DIR/install/install_$OS.sh"

# Setup GitHub
echo "\nConnect to GitHub..."
source "$SCRIPT_DIR/github.sh"

echo "\nasdf install..."
source "$SCRIPT_DIR/asdf.sh"
