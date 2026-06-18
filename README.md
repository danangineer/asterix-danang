# Asterix-Danang

This repository is for my own custom [bootc](https://github.com/bootc-dev/bootc) image. It is an adjusted respin of Fedora Kinoite.

This KDE has a bare minimum of included applications, no Discover (install the flatpak of Bazaar) and includes Distrobox.

For all our CLI applications you'll have to install Homebrew (https://brew.sh) with the following command:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

The likes of htop, fastfetch, yazi etc etc are available to you. Or by creating a distrobox of course.

### Step 1: Choose a Fedora Atomic image and install it

    Doesn't matter which one you pick, you'll rebase anyway (Kinoite, Silverblue, Cosmic)

### Step 2: Switch to Asterix

From the terminal in your bootc system, run the following command:

    sudo bootc switch ghcr.io/danangineer/asterix-danang

This should queue your image for the next reboot, which you can do immediately after the command finishes. You have officially set up your custom image! 

### Chosen Base Image

     Kinoite: `quay.io/fedora/fedora-kinoite:latest`

You can find more Universal Blue images on the [packages page](https://github.com/orgs/ublue-os/packages). Fedora ones can be found here: https://quay.io/organization/fedora


## Repository Contents

### Containerfile

The [Containerfile](./Containerfile) defines the operations used to customize the selected image.This file is the entrypoint for your image build, and works exactly like a regular podman Containerfile. For reference, please see the [Podman Documentation](https://docs.podman.io/en/latest/Introduction.html).

### build.sh

The [build.sh](./build_files/build.sh) file is called from your Containerfile. It is the best place to install new packages or make any other customization to your system. There are customization examples contained within it for your perusal.

### build.yml

The [build.yml](./.github/workflows/build.yml) Github Actions workflow creates your custom OCI image and publishes it to the Github Container Registry (GHCR). By default, the image name will match the Github repository name. There are several environment variables at the start of the workflow which may be of interest to change.

### Justfile Documentation

The `Justfile` contains various commands and configurations for building and managing container images and virtual machine images using Podman and other utilities.
To use it, you must have installed [just](https://just.systems/man/en/introduction.html) from your package manager or manually. It is available by default on all Universal Blue images.

### Environment Variables

- `image_name`: The name of the image (default: "image-template").
- `default_tag`: The default tag for the image (default: "latest").
- `bib_image`: The Bootc Image Builder (BIB) image (default: "quay.io/centos-bootc/bootc-image-builder:latest").

-----------------------------

Feel free to use these builds and dots as you like. I do not, however, imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk. Have fun!
