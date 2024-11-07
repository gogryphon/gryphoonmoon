
Debian
====================
This directory contains files used to package gryphonmoond/gryphonmoon-qt
for Debian-based Linux systems. If you compile gryphonmoond/gryphonmoon-qt yourself, there are some useful files here.

## gryphonmoon: URI support ##


gryphonmoon-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install gryphonmoon-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your gryphonmoon-qt binary to `/usr/bin`
and the `../../share/pixmaps/gryphonmoon128.png` to `/usr/share/pixmaps`

gryphonmoon-qt.protocol (KDE)

