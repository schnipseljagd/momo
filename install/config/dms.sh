# niri has native systemd session integration. Bind DMS to niri's service
systemctl --user add-wants niri.service dms

# configure dms
dms ipc call profile setImage ~/.local/share/momo/assets/logos/momo-logo-small.jpg
dms ipc call wallpaper set ~/.local/share/momo/assets/wallpapers/momo-olive-grove-wallpaper.png
