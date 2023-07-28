# dots
dot files

## appmenu packages
appmenu-gtk-module libdbusmenu-glib

## hide title bar of maximized windows plasma
kwriteconfig5 --file ~/.config/kwinrc --group Windows --key BorderlessMaximizedWindows true && \
    qdbus org.kde.KWin /KWin reconfigure
