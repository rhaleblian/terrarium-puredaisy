[![CI](https://github.com/rhaleblian/terrarium-puredaisy/actions/workflows/CI.yml/badge.svg)](https://github.com/rhaleblian/terrarium-puredaisy/actions/workflows/CI.yml)

# terrarium-puredaisy
Template for creating Terrarium/Daisy programs from Pure Data patches.

# Prerequisites
Your local machine needs:

* Python
* Python packages `enum` and `jinja2`
* The `gcc-arm-none-eabi` compiler toolchain

# Setup
To start a new patch, create a new repository using this one as a template.

Clone your new repository and do a one time bootstrap:

    make bootstrap

Replace `passthru.pd` with your new patch. Edit `Makefile` so that TARGET
is the base name of your patch, without the `.pd` extension.

# Building a .bin file
When your patch is ready for a build, type

    make
    
If all is successful, your .bin file will be in the `build/build` folder.
