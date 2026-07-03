# nirivoid

![voidlinux](https://avatars.githubusercontent.com/u/37247796?s=200&v=4)

void linux niri configuration

---

## Table of contents
- [Basics](#basics)
- [fuzzel](#fuzzel)
- [alacritty](#alacritty)
- [Keys](#keys)
- [Session environment](#session-environment)

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
|super+q| close window|
|super+f| fullscreen mode|
|super+v| floating mode|
|super+x| overview|
|super+left/right| change column|
|ctrl+super+left/right| move column|
|super+pgup/pgdown| change workspace|
|ctrl+super+pgup/pgdown| move to workspace|

[back](#table-of-contents)

---

# Session environment

Sound, thunar mounts and steam

```bat
xbps-install xwayland-satellite xorg-server-xwayland
```

[back](#table-of-contents)

---
