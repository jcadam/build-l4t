BUILD-L4T
=========

This is just a Makefile to enable building L4T images for Jetson TK1 board at once.

Build and flash Jetson-TK1
--------------------------

1. Clone this repository to your local Linux machine (Ubuntu 14.04 amd64 only)

        git clone git@github.com:jcadam/build-l4t.git

2. Build rootfs for Jetson-TK1

        cd build-l4t && make

3. Flash images to Jetson-TK1

        source ./envsetup.sh && flash

Please notice that Jetson-TK1 must to be put into forced-recovery mode before flashing.
