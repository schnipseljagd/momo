# Momo

A modern Linux desktop environment on CachyOS. It uses [Niri](https://github.com/niri-wm/niri) as Wayland compositor and the [DankMaterialShell](https://github.com/AvengeMedia/DankMaterialShell).
It borrows concepts and code from [Omarchy](https://github.com/basecamp/omarchy) and [Zirconium](https://github.com/zirconium-dev/zirconium).

## Installation

1. Install CachyOS with Limine and Btrfs but don't pick a desktop environment.
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
