#!/bin/bash

sudo pacman -Sy wget --noconfirm

REALPATH=$(realpath "$0")
DESKTOPDIR="$HOME/Desktop"
cd $HOME
mkdir Applications
cd Applications
mkdir GDLauncher
cd GDLauncher
ICON=./gdLogo.png
if [ -f "$ICON" ]; then
    echo "Skipping icon download, file already exists"
else 
    wget https://user-images.githubusercontent.com/17909958/97087261-2aa72780-1629-11eb-88d3-b3a01306779d.png
    mv 97087261-2aa72780-1629-11eb-88d3-b3a01306779d.png gdLogo.png
fi
wget https://github.com/gorilla-devs/GDLauncher/releases/latest/download/GDLauncher-linux-setup.AppImage
mv ./GDLauncher-linux-setup.AppImage GDLauncher.AppImage
chmod +x GDLauncher.AppImage
cd $DESKTOPDIR
cat > "./GDLauncher.desktop" << EOL
[Desktop Entry]
Name=GDLauncher
Icon=$HOME/Applications/GDLauncher/gdLogo.png
Exec=$HOME/Applications/GDLauncher/GDLauncher.AppImage
Type=Application
EOL
sudo cp $DESKTOPDIR/"GDLauncher.desktop" /usr/share/applications/
