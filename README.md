[![CI](https://github.com/rhaleblian/terrarium-puredaisy/actions/workflows/CI.yml/badge.svg)](https://github.com/rhaleblian/terrarium-puredaisy/actions/workflows/CI.yml)

# terrarium-puredaisy

Template for creating a Terrarium/Daisy binary from a Pure Data patch.


# Prerequisites

Your local machine needs:

* Python 3 (possibly 2)
* Python packages `enum` and `jinja2`
* The `gcc-arm-none-eabi` compiler toolchain

This template has been tested on macOS, Windows Subsystem for Linux
and Ubuntu.

For example, on WSL or Ubuntu you might

    sudo apt install python3 gcc-arm-none-eabi
    pip3 install enum34 jinja2

On macOS you can do same if you have Homebrew installed.


# Setup

Create a new GitHub repository using this one as a template.

Clone your new repository locally and do a one time bootstrap:

    make bootstrap

Then test build the existing patch:

    make

and program the daisy with `patch.bin.  The template patch is a
tremolo effect. Knob 1 controls the speed.


# Making your own binary

Replace `patch.pd` with your own Pd file.
Edit `Makefile` so that TARGET is the base name of your file,
without the `.pd` extension.

When your .pd file is ready to build a .bin, type

    make
    
If all is successful, your .bin file will be next to your .pd file.


# Resources

[Pure Data Manual](http://write.flossmanuals.net/pure-data/introduction2/)

