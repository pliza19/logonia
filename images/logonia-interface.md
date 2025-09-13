# {Logônia}

Interface snapshot settings.

## General Settings

- Theme: Light
- Screen resolution: 1920x1080

- **Turn off Night Light mode**!
- Resize the window (see *Window Size* settings)
- Only vertical scrollbar
- Command center: closed
- No `nls` script visible
- “View updates” checkbox checked
- Maintain default settings

## Window Size

Install `wmctrl` to manage windows (if not already installed).

For *Arch* Linux or *Manjaro*, install with:

```bash
sudo pacman -S wmctrl
```

List and identify the window to be included in the GIF with:

```bash
wmctrl -lG
```

Resize the window to `1440`x`726` pixels using with:

> If there are two windows with the same name, use the `-i` option to specify the window ID.

```bash
# gravity, x, y, width, and height
wmctrl -r NetLogo -e 0,240,120,1440,726
```

## GIF Settings

### Sequences

- **Logônias**: By 10 years, starting on January 1951 to December 2024 (1951-01, 1961-01, 1971-01, 1981-01, 1991-01, 2001-01, 2011-01, 2024-12).
- **Climate variables**: `tmin`, `tmax`, and `prec`: 3 screenshots/variable (1951-01 to 1951-03).

```netlogo
go
```

### Render

Install `ImageMagick` (if not already installed) to convert the PNG files to a GIF.

For *Arch* Linux or *Manjaro*, install with:

```bash
sudo pacman -S imagemagick
```

Use the following for the conversion:

```bash
magick -delay 60 -loop 0 *.png output.gif
```
