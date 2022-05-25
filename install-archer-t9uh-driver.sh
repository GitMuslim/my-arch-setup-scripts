sudo pacman -Sy gcc make binutils dkms linux linux-headers --noconfirm

cd ~
mkdir gitcloning
cd gitcloning
git clone https://aur.archlinux.org/rtl88xxau-aircrack-dkms-git.git
cd rtl88xxau-aircrack-dkms-git
makepkg -s
sudo pacman -U rtl88xxau-aircrack-dkms-git-r1181.37e27f9-1-x86_64.pkg.tar.zst
