sudo pacman -Sy git --noconfirm

cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $USER:$USER ./yay
cd yay
makepkg -si --noconfirm
