# Dotfiles

Windows 95 themed sway setup on Fedora.

## Theme

| Toolkit | Theme | Source |
|---------|-------|--------|
| GTK2/GTK3 | Chicago95 | [grassmunk/Chicago95](https://github.com/grassmunk/Chicago95) |
| GTK4 | Windows 95 | [B00merang-Project/Windows-95](https://github.com/B00merang-Project/Windows-95) |
| Qt5 | qt5ct "Windows" style | Chicago95_qt.conf palette |
| Icons | Chicago95 | grassmunk/Chicago95 |
| Cursor | Chicago95_Cursor_White | grassmunk/Chicago95 |
| Font | Bm437 IBM VGA 8x16 | [int10h.org](https://int10h.org/oldschool-pc-fonts/) |

## Install

### Packages

```bash
dnf install qt5ct qt5-qtstyleplugins sway foot jq
```

### Themes

```bash
git clone https://github.com/grassmunk/Chicago95.git /tmp/Chicago95
git clone https://github.com/B00merang-Project/Windows-95.git /tmp/Windows-95

mkdir -p ~/.themes ~/.icons
cp -r /tmp/Chicago95/Theme/Chicago95 ~/.themes/
cp -r /tmp/Windows-95 "Windows 95" ~/.themes/
cp -r /tmp/Chicago95/Icons/* ~/.icons/
```

### Qt5 color palette

```bash
sudo mkdir -p /usr/share/qt5ct/colors
sudo cp /tmp/Chicago95/Extras/Chicago95_qt.conf /usr/share/qt5ct/colors/
```

### IBM VGA font

```bash
curl -L -o /tmp/otb.zip "https://int10h.org/oldschool-pc-fonts/download/oldschool_pc_font_pack_v2.2_FULL.zip"
unzip -o /tmp/otb.zip "otb - Bm (linux bitmap)/Bm437_IBM_VGA_8x16.otb" -d /tmp/
mkdir -p /usr/local/share/fonts/ibm-vga
cp "/tmp/otb - Bm (linux bitmap)/Bm437_IBM_VGA_8x16.otb" /usr/local/share/fonts/ibm-vga/
fc-cache -f
```

### qt5ct

Run `qt5ct` and set:
- Style: **Windows**
- Palette: **Custom** → **Chicago95_qt**
- Icons: **Chicago95**

## Keybinds

| Key | Action |
|-----|--------|
| Alt+Return | Open foot |
| Alt+1-9 | Switch workspace (+ spawn foot if empty) |
| Alt+Shift+1-9 | Move window to workspace |
| Alt+Shift+Space | Toggle floating |
| Alt+Shift+q | Kill window (auto-switch if workspace empty) |
| Alt+Shift+c | Reload sway config |
| Alt+Shift+e | Quit sway |
| Alt+h/j/k/l | Focus left/down/up/right |
| Alt+Arrow | Focus left/down/up/right |
| Alt+Shift+h/j/k/l | Move window left/down/up/right |
| Alt+Shift+Arrow | Move window left/down/up/right |
