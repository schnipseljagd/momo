# Momo

A modern Linux desktop environment on CachyOS. It uses [Niri](https://github.com/niri-wm/niri) as Wayland compositor and the [DankMaterialShell](https://github.com/AvengeMedia/DankMaterialShell).
It borrows concepts and code from [Omarchy](https://github.com/basecamp/omarchy) and [Zirconium](https://github.com/zirconium-dev/zirconium).

<img width="768" height="1016" alt="Image" src="https://github.com/user-attachments/assets/1959338f-ce27-46df-9f89-dffbc96303a5" />

## Installation

1. Install a fresh CachyOS with:
  - Limine as bootloader
  - Erase disk (auto partitioning) with Btrfs and Encrypt system
  - No Desktop environment
  - Remove any additional packages but keep:
    - `CachyOS Packages`
    - `Base-devel + Common packages`
    - `CPU specific Microcode update packages`

2. Boot into Momo (this may take a while):
```bash
./boot.sh
```

## Commands

### Reinstall the configuration

Be careful, this will overwrite your existing configuration!

```bash
~/.local/share/bin/momo-reinstall-configs
```

## License

Momo is released under the [MIT License](https://opensource.org/license/MIT).
