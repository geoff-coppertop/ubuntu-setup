flatpak install -y flathub com.prusa3d.PrusaSlicer

sudo flatpak override com.prusa3d.PrusaSlicer --env=SSL_CERT_FILE=/etc/pki/tls/certs/ca-bundle.crt
