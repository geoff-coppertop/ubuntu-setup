# We added our own meant for Alacritty
sudo rm -rf /usr/local/share/applications/nvim.desktop
sudo rm -rf /usr/local/share/applications/vim.desktop


cd /tmp
wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
tar -xf nvim.tar.gz
sudo install nvim-linux64/bin/nvim /usr/local/bin/nvim
sudo cp -R nvim-linux64/lib /usr/local/
sudo cp -R nvim-linux64/share /usr/local/
rm -rf nvim-linux64 nvim.tar.gz
cd -

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then
	# Use LazyVim
	git clone https://github.com/LazyVim/starter ~/.config/nvim

	# Disable update notification popup in starter config
	sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' ~/.config/nvim/lua/config/lazy.lua

	# Make everything match the terminal transparency
	mkdir -p ~/.config/nvim/plugin/after
	cp $CONFIG_PATH/neovim/transparency.lua ~/.config/nvim/plugin/after/

	# Enable default extras
	cp $CONFIG_PATH/neovim/lazyvim.json ~/.config/nvim/lazyvim.json

	cp $CONFIG_PATH/neovim/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
fi

# Replace desktop launcher with one running inside Alacritty
sudo rm -rf /usr/share/applications/nvim.desktop

cat <<EOF >~/.local/share/applications/Neovim.desktop
[Desktop Entry]
Version=1.0
Name=Neovim
Comment=Edit text files
Exec=alacritty -e nvim %F
Terminal=false
Type=Application
Icon=nvim
Categories=Utilities;TextEditor;
StartupNotify=false
EOF
