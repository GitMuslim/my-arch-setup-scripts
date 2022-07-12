#!/bin/bash

sudo pacman -Sy wget --noconfirm

REALPATH=$(realpath "$0")
DESKTOPDIR="$HOME/Desktop"
cd $HOME
mkdir Applications
cd Applications
mkdir PolyMC
cd PolyMC
ICON=./polymc.png
if [ -f "$ICON" ]; then
    echo "Skipping icon download, file already exists"
else 
    wget https://github.com/MustafaKhalaf69/my-arch-setup-scripts/raw/main/polymc.png
fi
wget https://github.com/PolyMC/PolyMC/releases/download/1.3.2/PolyMC-Linux-1.3.2-x86_64.AppImage
mv ./PolyMC-Linux-1.3.2-x86_64.AppImage PolyMC.AppImage
chmod +x PolyMC.AppImage
cd $DESKTOPDIR
cat > "./PolyMC.desktop" << EOL
[Desktop Entry]
Name=PolyMC
Icon=$HOME/Applications/PolyMC/polymc.png
Exec=$HOME/Applications/PolyMC/PolyMC.AppImage
Type=Application
EOL
sudo cp $DESKTOPDIR/"PolyMC.desktop" /usr/share/applications/
