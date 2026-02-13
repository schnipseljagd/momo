# Niri has native systemd session integration. Bind DMS to niri's service
systemctl --user add-wants niri.service dms

# Start and configure niri session
niri-session
