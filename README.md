# Asterix-Danang

This repository is for my own custom [bootc](https://github.com/bootc-dev/bootc) image. It is an adjusted respin of Fedora Kinoite.

### Step 1: Choose a Fedora Atomic imageand install it

- Doesn't matter which one you pick, you'll rebase anyway

### Step 2: Switch to Asterix

From the terminal in your bootc system, run the following command:
```bash
sudo bootc switch ghcr.io/danangineer/asterix-danang
```
This should queue your image for the next reboot, which you can do immediately after the command finishes. You have officially set up your custom image! See the following section for an explanation of the important parts of the template for customization.

### Chosen Base Image

- Kinoite: `quay.io/fedora/fedora-kinoite:latest`

You can find more Universal Blue images on the [packages page](https://github.com/orgs/ublue-os/packages).
</details>

# Repository Contents

## Containerfile

The [Containerfile](./Containerfile) defines the operations used to customize the selected image.This file is the entrypoint for your image build, and works exactly like a regular podman Containerfile. For reference, please see the [Podman Documentation](https://docs.podman.io/en/latest/Introduction.html).

## build.sh

The [build.sh](./build_files/build.sh) file is called from your Containerfile. It is the best place to install new packages or make any other customization to your system. There are customization examples contained within it for your perusal.

## build.yml

The [build.yml](./.github/workflows/build.yml) Github Actions workflow creates your custom OCI image and publishes it to the Github Container Registry (GHCR). By default, the image name will match the Github repository name. There are several environment variables at the start of the workflow which may be of interest to change.

# Justfile Documentation

The `Justfile` contains various commands and configurations for building and managing container images and virtual machine images using Podman and other utilities.
To use it, you must have installed [just](https://just.systems/man/en/introduction.html) from your package manager or manually. It is available by default on all Universal Blue images.

## Environment Variables

- `image_name`: The name of the image (default: "image-template").
- `default_tag`: The default tag for the image (default: "latest").
- `bib_image`: The Bootc Image Builder (BIB) image (default: "quay.io/centos-bootc/bootc-image-builder:latest").

## Additional resources

For additional driver support, ublue maintains a set of scripts and container images available at [ublue-akmod](https://github.com/ublue-os/akmods). These images include the necessary scripts to install multiple kernel drivers within the container (Nvidia, OpenRazer, Framework...). The documentation provides guidance on how to properly integrate these drivers into your container image.

-----------------------------

Feel free to use these builds and dots as you like. I do not, however, imply any form of support or ongoing maintenance. And of course, you use them entirely at your own risk. Have fun!
