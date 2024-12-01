# Go
mise use --global go@latest

# Python
mise use --global python@latest

# Rust
bash -c "$(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs)" -- -y

# Connect IQ SDK
cd /tmp

rm -rf connectiq
wget -O connectiq.zip 'https://developer.garmin.com/downloads/connect-iq/sdk-manager/connectiq-sdk-manager-linux.zip' 1>/dev/null 2>&1
unzip connectiq.zip -d connectiq 1>/dev/null 2>&1

sudo connectiq/bin/sdkmanager

cd -
