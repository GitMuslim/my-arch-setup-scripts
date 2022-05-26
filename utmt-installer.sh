#!/bin/bash

sudo pacman -Sy wget unzip --noconfirm
clear

REALPATH=$(realpath "$0")
DESKTOPDIR="$HOME/Desktop"
cd $HOME
mkdir Applications
cd Applications
mkdir UndertaleModTool
cd UndertaleModTool
ICON=./UndertaleModTool_0_0.png
if [ -f "$ICON" ]; then
    echo "Skipping icon download, file already exists"
else 
    wget https://media.moddb.com/images/mods/1/47/46835/UndertaleModTool_0_0.png
fi
wget https://github.com/krzys-h/UndertaleModTool/releases/download/0.4.0.4/UndertaleModTool_v0.4.0.4.zip
unzip UndertaleModTool_v0.4.0.4.zip
rm UndertaleModTool_v0.4.0.4.zip	
cd $DESKTOPDIR
cat > "./UndertaleModTool.desktop" << EOL
[Desktop Entry]
Name=UndertaleModTool
Icon=$HOME/Applications/UndertaleModTool/UndertaleModTool_0_0.png
Exec=wine $HOME/Applications/UndertaleModTool/UndertaleModTool.exe
Type=Application
EOL
sudo cp $DESKTOPDIR/"UndertaleModTool.desktop" /usr/share/applications/
