# Add Niri config for greeter
sudo tee /etc/greetd/niri.kdl >/dev/null <<'EOF'
hotkey-overlay {
    skip-at-startup
}

environment {
    DMS_RUN_GREETER "1"
}

gestures {
  hot-corners {
    off
  }
}

layout {
  background-color "#000000"
}
EOF

# Configure greetd to use dms-greeter
sudo tee /etc/greetd/config.toml >/dev/null <<'EOF'
[terminal]
vt = 1

[default_session]
command = "dms-greeter --command niri -C /etc/greetd/niri.kdl"
user = "greeter"
EOF

# Automatically sync the system greeter with the logged in user's wallpaper, themes, fonts, etc.
dms greeter sync

# Create configuration symlinks
sudo ln -sf ~/.config/DankMaterialShell/settings.json /var/cache/dms-greeter/settings.json
sudo ln -sf ~/.local/state/DankMaterialShell/session.json /var/cache/dms-greeter/session.json
sudo ln -sf ~/.cache/DankMaterialShell/dms-colors.json /var/cache/dms-greeter/colors.json

# Fix broken permissions
sudo chgrp -R greeter /var/cache/dms-greeter
sudo chmod -R g+rX,o+rX /var/cache/dms-greeter

dms greeter status
