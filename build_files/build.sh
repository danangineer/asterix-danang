#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y @kde-desktop-environment
dnf5 install -y distrobox
dnf5 install -y fastfetch
dnf5 install -y krusader

dnf5 remove -y filelight
dnf5 remove -y firefox
dnf5 remove -y kcharselect
dnf5 remove -y kfind
dnf5 remove -y khelpcenter
dnf5 remove -y kde-connect
dnf5 remove -y kdebugsettings
dnf5 remove -y kjournald
dnf5 remove -y krfb
dnf5 remove -y nvtop
dnf5 remove -y plasma-discover
dnf5 remove -y plasma-welcome

# Add Flathub by default
mkdir -p /etc/flatpak/remotes.d
curl --retry 3 -o /etc/flatpak/remotes.d/flathub.flatpakrepo "https://dl.flathub.org/repo/flathub.flatpakrepo"

#### Example for enabling a System Unit File

systemctl enable podman.socket


