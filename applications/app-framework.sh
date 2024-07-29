cd /tmp

wget -O frameworkd.deb 'https://stefanhoelzl.github.io/frameworkd/frameworkd_0.2.0-1_amd64.deb'
sudo dpkg -i ./frameworkd.deb
rm frameworkd.deb

wget -O frameworkctl.zip 'https://stefanhoelzl.github.io/frameworkd/frameworkctl@stefanhoelzl.shell-extension.zip'
mkdir -p ~/.local/share/gnome-shell/extensions/frameworkctl@stefanhoelzl
unzip -o frameworkctl.zip -d ~/.local/share/gnome-shell/extensions/frameworkctl@stefanhoelzl
gnome-extensions enable frameworkctl@stefanhoelzl

cd -
