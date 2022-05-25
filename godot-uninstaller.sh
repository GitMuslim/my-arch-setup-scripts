#!/bin/bash

echo "Godot version: "
read VERSION

DESKTOPDIR="$HOME/Desktop"
cd /usr/share/applications
sudo rm ./"Godot $VERSION.desktop"
cd $DESKTOPDIR
rm ./"Godot $VERSION.desktop"
rm -rf $HOME/Applications/Godot/$VERSION/
