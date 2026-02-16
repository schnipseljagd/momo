# niri has native systemd session integration. Bind DMS to niri's service
systemctl --user add-wants niri.service dms

# Bind Momo init to DMS
systemctl --user add-wants dms.service momo-init-dms-once
