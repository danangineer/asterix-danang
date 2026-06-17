#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y @kde-desktop-environment
dnf5 install -y tmux 
dnf5 install -y mc
dnf5 remove -y akonadiimportwizard
dnf5 remove -y akregator
dnf5 remove -y contactprintthemeeditor
dnf5 remove -y contactthemeeditor
dnf5 remove -y digikam
dnf5 remove -y dragon
dnf5 remove -y elisa
dnf5 remove -y fcitx5
dnf5 remove -y firefox
dnf5 remove -y gcdmaster
dnf5 remove -y gnome-abrt
dnf5 remove -y headerthemeeditor
dnf5 remove -y im-chooser
dnf5 remove -y input-remapper
dnf5 remove -y k3b
dnf5 remove -y kamoso
dnf5 remove -y kbd-layout-viewer5
dnf5 remove -y kcalc
dnf5 remove -y kcharselect
dnf5 remove -y kde-connect
dnf5 remove -y kdebugsettings
dnf5 remove -y kjournald
dnf5 remove -y kleopatra
dnf5 remove -y kmahjongg
dnf5 remove -y kmail
dnf5 remove -y kmines
dnf5 remove -y kmouth
dnf5 remove -y kolourpaint
dnf5 remove -y kontact
dnf5 remove -y korganizer
dnf5 remove -y kpat
dnf5 remove -y krdc
dnf5 remove -y krfb
dnf5 remove -y ktnef
dnf5 remove -y ktorrent
dnf5 remove -y kwatchgnugpg
dnf5 remove -y libreoffice
dnf5 remove -y neochat
dnf5 remove -y nvtop
dnf5 remove -y pimdataexporter
dnf5 remove -y plasma-discover
dnf5 remove -y plasma-welcome
dnf5 remove -y qrca
dnf5 remove -y showfoto
dnf5 remove -y sieveeditor
dnf5 remove -y skanpage

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket

