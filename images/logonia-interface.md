# Logônia

Interface snapshot settings.

## General Settings

- Theme: Light
- Screen resolution: 1920x1080

- Turn off Night Light mode!
- Resize the window (see GIF Settings)
- No scrollbars (horizontal or vertical)
- Command center: closed
- No `nls` script visible
- “View updates” checkbox checked
- Maintain default settings

## Window Size

Install `wmctrl` to manage windows (if not already installed).

Use the following for *Ubuntu* Linux:

```bash
sudo apt-get install wmctrl
```

For *Arch* Linux or *Manjaro*:

```bash
sudo pacman -S wmctrl
```

List and identify the window to be included in the GIF with:

```bash
# wmctrl -l
wmctrl -lG
```

Resize the window to `1440`x`860` pixels using with:

> If there are two windows with the same name, use the `-i` option to specify the window ID.

```bash
#gravity,x,y,width,height
wmctrl -r NetLogo -e 0,240,50,1440,860
```
