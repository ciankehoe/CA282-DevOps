#!/bin/sh

tarname=files.tgz

mkdir files

tar -xf $tarname -C files

# -C DIR --> denotes that we want the unzipped files to be
# place into a new directory (assumes DIR does not exist).
