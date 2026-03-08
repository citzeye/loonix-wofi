# Loonix-Wofi (Tunes Edition)

A clean, retro-futuristic Wofi theme designed to match the **Loonix Tunes** aesthetic. Featuring a deep navy background, cyan borders, and magenta selection highlights.

## Preview

![Wofi Preview](https://github.com/citzeye/loonix-wofi/SS/loonix-vibe-wofi.png)

## Features

- **Visual Harmony**: 100% matched with Loonix Tunes color palette.
- **Physical Files**: No more broken symlinks; styles are embedded directly.
- **UWSM Ready**: Works perfectly with systemd-managed Wayland sessions.

## Installation

### Method 1: Automatic (Recommended)

Clone the repository and run the provided install script. This script will check for dependencies and backup your existing config.

```bash
git clone [https://github.com/citzeye/loonix-wofi.git](https://github.com/citzeye/loonix-wofi.git)
cd loonix-wofi
chmod +x install.sh
./install.sh
```

Method 2: Manual
If you prefer to do it yourself, copy the files to your XDG config directory:

```
mkdir -p ~/.config/wofi
cp config style.css ~/.config/wofi/

```

Usage
To launch Wofi with this theme, use:

```
wofi --show drun --conf ~/.config/wofi/config --style ~/.config/wofi/style.css```
```
Hyprland Bind
Add this to your hyprland.conf for a seamless experience:

```
bind = $mainMod, space, exec, uwsm app -- wofi --show drun --conf $HOME/.config/wofi/config --style $HOME/.config/wofi/style.css
```
