# My dots
dot files

## appmenu packages
appmenu-gtk-module libdbusmenu-glib

## hide title bar of maximized windows plasma
kwriteconfig5 --file ~/.config/kwinrc --group Windows --key BorderlessMaximizedWindows true && qdbus org.kde.KWin /KWin reconfigure

## neovim cmake configure command
cmake . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_PREFIX_PATH=/opt/homebrew/opt/qt@5/