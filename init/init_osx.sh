#!/bin/sh

install_xcode() {
    if xcode-select -p &> /dev/null; then
        echo "xCode CLI tools is already installed."
    else
        echo "Installing Xcode CLI tools..."
        xcode-select --install
    fi
}

install_homebrew() {
    if command -v brew &> /dev/null; then
        echo "Homebrew is already installed."
    else
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL \
            https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
}

install_xcode
install_homebrew
