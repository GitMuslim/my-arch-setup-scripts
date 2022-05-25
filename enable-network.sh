sudo pacman -Sy iwd --noconfirm
sudo mkdir /etc/iwd
echo -n "" > /etc/iwd/main.conf
echo "[General]" >> /etc/iwd/main.conf
echo "EnableNetworkConfiguration=true" >> /etc/iwd/main.conf
echo "" >> /etc/iwd/main.conf
echo "[Network]" >> /etc/iwd/main.conf
echo "NameResolvingService=systemd" >> /etc/iwd/main.conf
