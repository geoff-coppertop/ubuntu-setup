# Use list view by default
gsettings set org.gnome.nautilus.preferences default-folder-viewer "list-view"

# Sort files by type
gsettings set org.gnome.nautilus.preferences default-sort-order "type"

# Small zoom level
gsettings set org.gnome.nautilus.list-view default-zoom-level "small"

mkdir -p $HOME/builds

cp $CONFIG_PATH/nautilus/bookmarks $HOME/.config/gtk-3.0/bookmarks
