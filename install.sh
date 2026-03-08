#!/bin/bash

# --- CHECK DEPENDENCY ---
if ! command -v wofi &> /dev/null; then
    echo "Error: 'wofi' is not installed."
    echo "Please install it first (e.g., sudo pacman -S wofi)"
    exit 1
fi

# --- INSTALL LOONIX-WOFI ---
TARGET_DIR="$HOME/.config/wofi"

echo "Installing Loonix-Wofi theme..."

# Backup jika sudah ada config lama biar tidak hilang
if [ -d "$TARGET_DIR" ]; then
    echo "Backing up existing wofi config to $TARGET_DIR.bak"
    cp -r "$TARGET_DIR" "$TARGET_DIR.bak"
fi

mkdir -p "$TARGET_DIR"

# Salin file config dan style fisik (bukan symlink)
cp -v config "$TARGET_DIR/config"
cp -v style.css "$TARGET_DIR/style.css"

echo "Success! Loonix-Wofi theme is ready to use."
# --- END INSTALL ---