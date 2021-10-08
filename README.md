[![CI](https://github.com/rhaleblian/terrarium-puredaisy/actions/workflows/CI.yml/badge.svg)](https://github.com/rhaleblian/terrarium-puredaisy/actions/workflows/CI.yml)

# terrarium-puredaisy

Template for creating a Terrarium/Daisy binary from a Pure Data patch.


# Prerequisites

This template has been tested on macOS, Windows Subsystem for Linux
and Ubuntu.  Windows itself is not supported.

Your local machine needs:

* Python 3
* The `gcc-arm-none-eabi` compiler toolchain

On WSL or Ubuntu you might:

    sudo apt install virtualenv python3 gcc-arm-none-eabi

On macOS you can do same if you have Homebrew installed:

    brew install virtualenv python3 gcc-arm-none-eabi


# Setup

Create a new GitHub repository using this one as a template.

Clone your new repository locally and do a one time bootstrap:

    make bootstrap

The process may want your input to install additional Python
packages.

Then test build the stand-in patch:

    make

and program the daisy with `patch.bin`.  The stand-in patch is a
tremolo effect. Knob 1 controls the speed.


# Making your own binary

Replace the stand-in patch `patch.pd` with your own Pd file.
You can use your own name; edit `Makefile` so that TARGET
is the base name of your file, without the `.pd` extension.

When your .pd file is ready to build a .bin, type

    make
    
If all is successful, your .bin file will be next to your .pd file.


# Resources

[Pure Data Manual](http://write.flossmanuals.net/pure-data/introduction2/)

