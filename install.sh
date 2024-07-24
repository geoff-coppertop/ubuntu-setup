#! /usr/bin/bash

set -e

# Desktop software and tweaks will only be installed if we're running Gnome
RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)

if $RUNNING_GNOME; then
	# Ensure computer doesn't go to sleep or lock while installing
	gsettings set org.gnome.desktop.screensaver lock-enabled false
	gsettings set org.gnome.desktop.session idle-delay 0
fi

sudo apt-get update -y 1>/dev/null
sudo apt-get upgrade -y 1>/dev/null
sudo apt-get install -y curl git unzip 1>/dev/null

export SOURCE_PATH="/home/$USER/.local/share/ubuntu-setup"
export CONFIG_PATH="$SOURCE_PATH/configs"
export THEMES_PATH="$SOURCE_PATH/themes"
export PREREQUISITES_PATH="$SOURCE_PATH/prerequisites"
export APPLICATIONS_PATH="$SOURCE_PATH/applications"
export CLEANUP_PATH="$SOURCE_PATH/cleanup"

echo "Cloning stable ubuntu-setup..."
rm -rf $SOURCE_PATH
git clone -b stable https://github.com/geoff-coppertop/ubuntu-setup.git $SOURCE_PATH >/dev/null

echo "Installation starting..."

# Run prerequisite installers
for prerequisite in $PREREQUISITES_PATH/*.sh; do source $prerequisite; done

# Run application installers
for application in $APPLICATIONS_PATH/*.sh; do source $application; done

if $RUNNING_GNOME; then
	# Revert to normal idle and lock settings
	gsettings set org.gnome.desktop.screensaver lock-enabled true
	gsettings set org.gnome.desktop.session idle-delay 300
fi
