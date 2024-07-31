sudo apt-get install -y flatpak
sudo apt-get install -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo 1>/dev/null

flatpak install -y flathub com.github.tchx84.Flatseal
