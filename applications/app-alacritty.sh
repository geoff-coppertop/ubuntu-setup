# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
sudo apt-get install -y alacritty

export ALACRITTY_CONFIG_PATH="/home/$USER/.config/alacritty"

mkdir -p $ALACRITTY_CONFIG_PATH

cp $CONFIG_PATH/alacritty/alacritty.toml $ALACRITTY_CONFIG_PATH/alacritty.toml
cp $CONFIG_PATH/alacritty/defaults.toml $ALACRITTY_CONFIG_PATH/config.toml
cp $CONFIG_PATH/alacritty/fonts/CaskaydiaMono.toml $ALACRITTY_CONFIG_PATH/font.toml
cp $CONFIG_PATH/alacritty/font-size.toml $ALACRITTY_CONFIG_PATH/font-size.toml
cp $CONFIG_PATH/alacritty/theme.toml $ALACRITTY_CONFIG_PATH/theme.toml

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which alacritty) 50
sudo update-alternatives --config x-terminal-emulator
