# nirivoid

![voidlinux](https://avatars.githubusercontent.com/u/37247796?s=200&v=4)

void linux niri configuration

---

## Table of contents
- [Basics](#basics)
- [LightDM](#lightdm)
- [Fuzzel](#fuzzel)
- [Alacritty](#alacritty)
- [Keys](#keys)
- [Conky](#conky)
- [Screenlock](#screenlock)
- [Session environment](#session-environment)
- [Portals](#portals)

---
# Basics

As a lover of minimalism my choice for a wayland compositor was almost natural. I despite icons on desktops and prefer to avoid panels and docks. 
The appeal of dynamic workspace generation and infinite scolling made me fall in love with niri immediately.

In this branch I use niri with no preconfigured shell. The command to install the base environment is the following:

```bat
xbps-install niri 
```

dbus-run-session niri --session

[back](#table-of-contents)

---
# LightDM

Configuring lightdm for 4K display and with a nice wallpaper from [osowoso art](https://art.osowoso.org/).

See [config file](./etc/lightdm/lightdm-gtk-greeter.conf)

[back](#table-of-contents)

---
# Fuzzel

The default launcher for niri is fuzzel, installed with:

```bat
xbps-install fuzzel
```
To use bigger fonts and a dark theme I generated this [config file](.config/fuzzel/fuzzel.ini)

[back](#table-of-contents)

---

# Alacritty

The default terminal for niri, installed with:

```bat
xbps-install alacritty
```

To increase font size and enable tranparency, refer to this [config file](.config/alacritty/alacritty.toml)

[back](#table-of-contents)

---

# Keys

The default niri configuration relies on english keyboard. I had to tinker with key combinations to follow my layout and usecase:

| combination | effect |
|-------|-------|
|super+t| terminal|
|super+b| web browser|
|super+d| app launcher|
|super+e| file explorer|
|super+q| close window|
|super+f| fullscreen mode|
|super+v| floating mode|
|super+x| overview|
|super+left/right| change column|
|ctrl+super+left/right| move column|
|super+pgup/pgdown| change workspace|
|ctrl+super+pgup/pgdown| move to workspace|
|super+plus/minus| increase/reduce column size|

[back](#table-of-contents)

---

# Conky

I need a clock on the desktop, but to embrace minimalism it's just a toggle for a basic conky.

The conky configuration is [this](.conkyrc), ready for wayland and niri.

The activation script is just a toggle with pgrep, you can take a look [here](./scripts/toggleconky.bash)

[back](#table-of-contents)

---

# Screenlock

Here is a basic config to lock the screen with a simple blur effect. Packages needed:

```bat
xbps-install swaylock grim ImageMagick
```
The basic swaylock is not great, so [this short script](./scripts/screenlock.bash) takes a temporary screenshot and blurs it to use it as a background

I added the keybind to my [niri config](.config/niri/config.kdl)

[back](#table-of-contents)

---

# Session environment

Added a couple packages to allow Steam to run everything

```bat
xbps-install xwayland-satellite xorg-server-xwayland
```

To make sound work the pipewire process has to start on launch. The same is for polkit to allow thunar to mount partitions.
See the spawn-at-start section in my [niri config](.config/niri/config.kdl)

[back](#table-of-contents)

---

# Portals

Packages to enable screen sharing in discord and others

```bat
xbps-install xdg-desktop-portal xdg-desktop-portal-gnome
```

Generated a [config file for portals](.config/xdg-desktop-portal/niri-portals.conf)

Updated spawn-at-start section in my [niri config](.config/niri/config.kdl)

To maintain GTK themes, this command is also needed:
```bat
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

Also conky somehow decided to not work anymore, updated my script with -9 option to pkill command, now in my [conky toggle script](./scripts/toggleconky.bash)

[back](#table-of-contents)

---
