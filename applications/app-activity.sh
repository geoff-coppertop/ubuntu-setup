# Remove Btop entry for one that runs in alacritty
sudo rm -rf /usr/share/applications/btop.desktop

# Replacing this with btop
sudo rm -rf /usr/share/applications/org.gnome.SystemMonitor.desktop

mkdir -p $HOME/.local/share/applications/icons
cp $APPLICATIONS_PATH/icons/Activity.png $HOME/.local/share/applications/icons/Activity.png

cat <<EOF >~/.local/share/applications/Activity.desktop
[Desktop Entry]
Version=1.0
Name=Activity
Comment=System activity from btop
Exec=alacritty -e btop
Terminal=false
Type=Application
Icon=$HOME/.local/share/applications/icons/Activity.png
Categories=GTK;
StartupNotify=false
EOF
