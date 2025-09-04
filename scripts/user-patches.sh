#!/bin/bash
# user-patches.sh
# Install missing decoders for amavis

echo "INFO: Installing additional packages for amavis (zoo, ripole, zstd)..."
apt-get update -q
apt-get install -y -q zoo ripole zstd

# The following command is important to ensure amavis knows about the new tools
# It checks for available decompression tools and updates its internal list.
/usr/sbin/amavisd-new show-decode-versions

echo "INFO: Finished installing additional packages."
