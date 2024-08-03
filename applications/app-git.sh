cp $CONFIG_PATH/git/gitconfig $HOME/.gitconfig

mkdir -p $HOME/.git/templates/

cp $CONFIG_PATH/git/commit-template.txt $HOME/.git/templates/commit-template.txt

# Lazygit
cd /tmp
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -sLo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar -xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit.tar.gz lazygit
cd -

# git large file storage
cd /tmp

wget -O git-lfs.tar.gz https://github.com/git-lfs/git-lfs/releases/download/v3.5.1/git-lfs-linux-amd64-v3.5.1.tar.gz
tar -xf git-lfs.tar.gz
sudo git-lfs-*/install.sh
rm -rf git-lfs.tar.gz git-lfs-*/

cd -

git lfs install

# Pre-commit
pip install pre-commit
pre-commit init-templatedir ~/.git/

# git credential manager
cd /tmp

wget -O gcm-install.sh https://aka.ms/gcm/linux-install-source.sh
chmod +x gcm-install.sh
./gcm-install.sh
git-credential-manager configure

cd -

# https://gist.github.com/maelvls/79d49740ce9208c26d6a1b10b0d95b5e
# https://askubuntu.com/a/1469736
# https://github.com/hickford/git-credential-oauth
sudo apt-get install git-credential-oauth
