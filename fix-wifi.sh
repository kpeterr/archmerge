echo "################################################################"
echo "###################       -- ArchMerge --       ################"
echo "################### Install Broadcom Wi-Fi Card ################"
echo "################################################################"

echo "Uninstall broadcom-wl driver:"
echo "################################################################"
sudo pacman -R --noconfirm --needed broadcom-wl
echo "Done"

echo "Install broadcom-wl-dkms driver:"
echo "################################################################"
sudo pacman -S --noconfirm --needed broadcom-wl-dkms
echo "Done"

echo "Set brcmsmac Config:"
echo "################################################################"
sudo echo "brcmsmac" > /etc/modules-load.d/wifi.conf
echo "Done"

echo "Set broadcom-wl-dkms.conf:"
echo "################################################################"
sudo sed -i 's/blacklist brcmsmac/#blacklist brcmsmac/' /usr/lib/modprobe.d/broadcom-wl-dkms.conf
echo "Done"

echo "Fix broadcom-wl-dkms.conf:"
echo "################################################################"
sudo chattr +i /usr/lib/modprobe.d/broadcom-wl-dkms.conf

echo "################################################################"
echo "############### Install Broadcom Wi-Fi Card is Done ############"
echo "################################################################"
