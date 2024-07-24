sudo apt install -y fzf ripgrep bat eza zoxide plocate btop fd-find

export BASH_CONFIG_PATH="$HOME/.config/bash"

mkdir -p $BASH_CONFIG_PATH

cp $CONFIG_PATH/bash/aliases $BASH_CONFIG_PATH/aliases
cp $CONFIG_PATH/bash/init $BASH_CONFIG_PATH/init
cp $CONFIG_PATH/bash/prompt $BASH_CONFIG_PATH/prompt
cp $CONFIG_PATH/bash/shell $BASH_CONFIG_PATH/shell

# Configure the bash shell using defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp $CONFIG_PATH/bash/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source $BASH_CONFIG_PATH/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using defaults
cp $CONFIG_PATH/bash/inputrc ~/.inputrc
