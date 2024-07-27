# Use list view by default
gsettings set org.gnome.nautilus.preferences default-folder-viewer "list-view"

# Sort files by type
gsettings set org.gnome.nautilus.preferences default-sort-order "type"

# List directories first
gsettings set org.gnome.nautilus.preferences sort-directories-first true

# Never show image thumbnails
gsettings set org.gnome.nautilus.preferences show-image-thumbnails "never"

# Use tree-view
gsettings set org.gnome.nautilus.list-view use-tree-view true

# Small zoom level
gsettings set org.gnome.nautilus.list-view default-zoom-level "small"

mkdir -p $HOME/builds

cp $CONFIG_PATH/nautilus/bookmarks $HOME/.config/gtk-3.0/bookmarks
