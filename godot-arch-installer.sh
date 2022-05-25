#!/bin/bash

sudo pacman -Sy wget unzip --noconfirm
clear

echo "Godot version: "
read VERSION

REALPATH=$(realpath "$0")
DESKTOPDIR="$HOME/Desktop"
cd $HOME
mkdir Applications
cd Applications
mkdir Godot
cd Godot
ICON=./Godot_icon.svg
if [ -f "$ICON" ]; then
    echo "Skipping icon download, file already exists"
else 
    wget https://upload.wikimedia.org/wikipedia/commons/6/6a/Godot_icon.svg
fi
mkdir $VERSION
cd $VERSION
wget https://downloads.tuxfamily.org/godotengine/$VERSION/Godot_v$VERSION-stable_x11.64.zip
unzip Godot_v$VERSION-stable_x11.64.zip
rm Godot_v$VERSION-stable_x11.64.zip
cd $DESKTOPDIR
cat > "./Godot $VERSION.desktop" << EOL
[Desktop Entry]
Name=Godot $VERSION
Icon=$HOME/Applications/Godot/Godot_icon.svg
Exec=$HOME/Applications/Godot/$VERSION/Godot_v$VERSION-stable_x11.64
Type=Application
EOL
sudo cp $DESKTOPDIR/"Godot $VERSION.desktop" /usr/share/applications/
