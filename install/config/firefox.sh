# Add Firefox policy
sudo mkdir -p /etc/firefox/policies
sudo tee /etc/firefox/policies/policies.json >/dev/null <<'EOF'
{
  "policies": {
    "Homepage": {
      "StartPage": "previous-session"
    },
    "DisplayBookmarksToolbar": "default-off",
    "ExtensionSettings": {
      "pywalfox@frewacom.org.xpi": {
        "installation_mode": "normal_installed",
        "install_url": "https://addons.mozilla.org/firefox/downloads/latest/pywalfox/latest.xpi",
        "private_browsing": true
      },
      "uBlock0@raymondhill.net": {
        "installation_mode": "normal_installed",
        "install_url": "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi",
        "private_browsing": true
      }
    }
  }
}
EOF

# Use DMS colors
dms restart
ln -sf ~/.cache/wal/dank-pywalfox.json ~/.cache/wal/colors.json
