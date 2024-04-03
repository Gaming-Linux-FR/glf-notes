+++
title = 'Trucs & Astuces Arch Linux'
date = 2024-04-03T11:38:33-02:00
summary = "Notes utiles sur Arch Linux"
author = "Darkone Linux"
tags = ['arch']
categories = ['Arch Linux']
+++

## Installation manuelle d'un paquet AUR

```sh
# On clone le paquetage et on va dedans
git clone https://aur.archlinux.org/nom_du_paquet.git
cd nom_du_paquet

# On vérifie le PKGBUILD
less PKGBUILD

# On make (-s pour installer les dépendances automatiquement, -rc pour cleaner après installation)
makepkg -rcs

# On installe
pacman -U nom_du_paquet-version-architecture.pkg.tar.zst
```
