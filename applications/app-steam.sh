# Play games from https://store.steampowered.com/
cd /tmp
wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb 1>/dev/null 2>&1
sudo apt install -y ./steam.deb
rm steam.deb
cd -
