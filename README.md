<img src="https://raw.githubusercontent.com/devlotfi/gnome-tokyo-night/main/github-assets/github-banner.png">

# 📜 gnome-tokyo-night

A Tokyo Night Theme for Gnome

# 📌 Contents

- [Theme setup](#-theme-setup)
- [Preview](#-preview)

# 📂 Theme Setup

## Gnome Extensions

- [Blur My Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Dash To Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)

## Other

- [VSCode Tokyo night theme](https://marketplace.visualstudio.com/items?itemName=enkia.tokyo-night)
- [MacOS Tahoe Icons](https://github.com/vinceliuice/MacTahoe-icon-theme)

## Install

```bash
$ ./install.sh
```

This applies the GTK 3, GTK 4, GNOME Shell, cursor and wallpaper themes.

Nothing has to be installed first. The GTK and shell themes ship prebuilt, so
a SCSS compiler is only needed if you edit the sources.

The GNOME Shell theme is the one exception: it needs the **User Themes**
extension. `install.sh` detects your package manager (dnf, apt, pacman or
zypper), shows you the exact command, and asks before running it. Decline and
everything else is still applied. A freshly installed extension only becomes
visible after GNOME restarts, so on Wayland log out and back in, then re-run.

### Optional

Run these individually if you use the tool:

```bash
$ ./apply-ghostty.sh
$ ./apply-starship.sh
$ ./apply-fastfetch.sh
```

### Uninstall

```bash
$ ./uninstall.sh
```

Removes only the files the theme installed and returns the settings it changed
to the GNOME defaults. The GRUB theme and the system-wide shell theme are not
covered, since both need root.

### Other applications

- GNOME Terminal: theme selection > **More Themes** > **Tokyo night**
- Chromium/Brave: extensions > enable dev mode > load unpacked > select the `brave` folder

### Contributing

Editing the SCSS sources needs `sassc`. When it is installed the apply scripts
rebuild the CSS; otherwise they use the committed build output.

# 📷 Preview

<img src="https://raw.githubusercontent.com/devlotfi/gnome-tokyo-night/main/github-assets/preview-1.png">
<img src="https://raw.githubusercontent.com/devlotfi/gnome-tokyo-night/main/github-assets/preview-2.png">
<img src="https://raw.githubusercontent.com/devlotfi/gnome-tokyo-night/main/github-assets/preview-3.png">
