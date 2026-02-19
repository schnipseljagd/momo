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

# Add your user to the greeter group
sudo usermod -aG greeter "$USER"

# Set up ACL permissions on parent directories
setfacl -m u:greeter:x ~
setfacl -m u:greeter:x ~/.config
setfacl -m u:greeter:x ~/.local
setfacl -m u:greeter:x ~/.cache
setfacl -m u:greeter:x ~/.local/state

# Set group permissions on DMS config directories
sudo chgrp -R greeter ~/.config/DankMaterialShell
sudo chmod -R g+rX ~/.config/DankMaterialShell

mkdir -p ~/.local/state/DankMaterialShell
sudo chgrp -R greeter ~/.local/state/DankMaterialShell
sudo chmod -R g+rX ~/.local/state/DankMaterialShell

mkdir -p ~/.cache/quickshell
sudo chgrp -R greeter ~/.cache/quickshell
sudo chmod -R g+rX ~/.cache/quickshell

# Create configuration symlinks
sudo ln -sf ~/.config/DankMaterialShell/settings.json /var/cache/dms-greeter/settings.json
sudo ln -sf ~/.local/state/DankMaterialShell/session.json /var/cache/dms-greeter/session.json
sudo ln -sf ~/.cache/DankMaterialShell/dms-colors.json /var/cache/dms-greeter/colors.json

# Fix broken permissions
sudo chgrp -R greeter /var/cache/dms-greeter
sudo chmod -R g+rX,o+rX /var/cache/dms-greeter
