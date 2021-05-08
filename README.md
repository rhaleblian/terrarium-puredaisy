[![CI](https://github.com/rhaleblian/terrarium-puredaisy/actions/workflows/CI.yml/badge.svg)](https://github.com/rhaleblian/terrarium-puredaisy/actions/workflows/CI.yml)

# terrarium-puredaisy
Template for creating a Terrarium/Daisy binary from a Pure Data patch.

# Prerequisites
Your local machine needs:

* Python
* Python packages `enum` and `jinja2`
* The `gcc-arm-none-eabi` compiler toolchain

This template has been tested on macOS, Windows Subsystem for Linux
and Ubuntu.

# Setup
To start a new patch, create a new repository using this one as a template.

Clone your new repository and do a one time bootstrap:

    make bootstrap

Replace `passthru.pd` with your own file. Edit `Makefile` so that TARGET
is the base name of your file, without the `.pd` extension.

# Building a .bin file
When your .pd file is ready to build a .bin, type

    make
    
If all is successful, your .bin file will be in the `build/build` folder.
