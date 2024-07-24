VSC_THEME="Monokai Night"
VSC_EXTENSION="fabiospampinato.vscode-monokai-night"

cd /tmp
wget -O code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo apt install -y ./code.deb
rm code.deb
cd -

mkdir -p ~/.config/Code/User
cp $CONFIG_PATH/vscode/vscode.json ~/.config/Code/User/settings.json

code --install-extension $VSC_EXTENSION >/dev/null
sed -i "s/\"workbench.colorTheme\": \".*\"/\"workbench.colorTheme\": \"$VSC_THEME\"/g" ~/.config/Code/User/settings.json
