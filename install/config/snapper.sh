if ! sudo snapper list-configs 2>/dev/null | grep -q "root"; then
  sudo snapper -c root create-config /
fi

if ! sudo snapper list-configs 2>/dev/null | grep -q "home"; then
  sudo snapper -c home create-config /home
fi

# Tweak default Snapper configs
sudo sed -i 's/^TIMELINE_CREATE="yes"/TIMELINE_CREATE="no"/' /etc/snapper/configs/{root,home}
sudo sed -E -i 's/^NUMBER_LIMIT="[0-9]{1,}"/NUMBER_LIMIT="5"/' /etc/snapper/configs/{root,home}
sudo sed -E -i 's/^NUMBER_LIMIT_IMPORTANT="[0-9]{1,}"/NUMBER_LIMIT_IMPORTANT="5"/' /etc/snapper/configs/{root,home}
