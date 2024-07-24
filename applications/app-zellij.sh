cd /tmp
wget -O zellij.tar.gz "https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz" 1>/dev/null 2>&1
tar -xf zellij.tar.gz zellij 1>/dev/null
sudo install zellij /usr/local/bin
rm zellij.tar.gz zellij
cd -

[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp $CONFIG_PATH/zellij/zellij.kdl ~/.config/zellij/config.kdl

mkdir -p ~/.config/zellij/themes
cp $CONFIG_PATH/zellij/theme.kdl ~/.config/zellij/themes/monokai.kdl
