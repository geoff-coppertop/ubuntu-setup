# Flameshot is a nice step-up over the default Gnome screenshot tool
flatpak install -y flathub org.flameshot.Flameshot

# App doesn't do anything when started from the app grid
sudo rm -rf /var/lib/flatpak/exports/share/applications/org.flameshot.Flameshot.desktop
