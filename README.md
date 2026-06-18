## Asterix-Danang

This repository is for my own custom [bootc](https://github.com/bootc-dev/bootc) image. It is an adjusted respin of Fedora Kinoite.

To build this image I chose Kinoite (quay.io/fedora/fedora-kinoite:latest). I did tests with both Aurora and ublue-kinoite, but I found those a bit too much.

My KDE has a bare minimum of included applications, no Discover and includes Distrobox.  As an appstore you can install the flatpak of Bazaar.

### Step 1: Choose a Fedora Atomic image and install it

    Doesn't matter which one you pick, you'll rebase anyway (Kinoite, Silverblue, Cosmic)

### Step 2: Switch to Asterix

From the terminal in your bootc system, run the following command:

    sudo bootc switch ghcr.io/danangineer/asterix-danang

This should queue your image for the next reboot, which you can do immediately after the command finishes. You have officially set up your custom image! 

### Step 3: Cleanup Asterix

Unfortunately some unnecessary cruft is installed, as flatpak, upon install of the Kinoite image. Let's get rid of them, knowing both Okular and Gwenview are already 'baked' in the image as native applications.

From the terminal run the following:

    flatpak remove -y eleisa gwenview kcalc kmahjongg kmines kolourpaint krdc okular qrca skanpage

Because I removed Discover the 'link' to Flathub is broken also; let's re-enable it:

    flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

Check it with:

    flatpak install bazaar

That should be it!

### Step 4: let's Brew

For all our CLI applications you'll have to install Homebrew (https://brew.sh) with the following command:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

The likes of htop, fastfetch, yazi etc etc are available to you. Or by creating a distrobox of course.

-----------------------------

Feel free to use these builds and dots as you like. I do not, however, imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk. Have fun!
