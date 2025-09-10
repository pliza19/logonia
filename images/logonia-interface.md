# Logônia

Interface snapshot settings.

## General Settings

- Theme: Light
- Screen resolution: 1920x1080

- Turn off Night Light mode!
- Resize the window (see Window Size settings)
- Only vertical scrollbar
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
wmctrl -r NetLogo -e 0,240,120,1440,726
```

### Sequence (by 10 years)

Starting on January 1951 to December 2024.

```netlogo
go true true
# Clear the command center after
```

### Render

Install `ImageMagick` (if not already installed) to convert the PNG files to a GIF.

Use the following for *Ubuntu* Linux:

```bash
sudo apt-get install imagemagick
```

For *Arch* Linux or *Manjaro*:

```bash
sudo pacman -S imagemagick
```

Use the following for the conversion:

```bash
# sudo apt-get install imagemagick
magick -delay 60 -loop 0 *.png output.gif
```
