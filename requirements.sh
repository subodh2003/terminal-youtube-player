#!/usr/bin/env bash

set -e

echo "Checking system..."

# Detect package manager
if command -v apt >/dev/null 2>&1; then
    PKG_MANAGER="apt"
elif command -v dnf >/dev/null 2>&1; then
    PKG_MANAGER="dnf"
elif command -v pacman >/dev/null 2>&1; then
    PKG_MANAGER="pacman"
elif command -v brew >/dev/null 2>&1; then
    PKG_MANAGER="brew"
else
    echo "Unsupported package manager."
    exit 1
fi

echo "Detected package manager: $PKG_MANAGER"

install_apt() {
    sudo apt update
    sudo apt install -y mpv yt-dlp ffmpeg
}

install_dnf() {
    sudo dnf install -y mpv yt-dlp ffmpeg
}

install_pacman() {
    sudo pacman -Sy --noconfirm mpv yt-dlp ffmpeg
}

install_brew() {
    brew install mpv yt-dlp ffmpeg
}

case "$PKG_MANAGER" in
    apt) install_apt ;;
    dnf) install_dnf ;;
    pacman) install_pacman ;;
    brew) install_brew ;;
esac

echo "All dependencies installed successfully."

