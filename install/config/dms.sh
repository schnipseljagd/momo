# niri has native systemd session integration. Bind DMS to niri's service
systemctl --user add-wants niri.service dms
