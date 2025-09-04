#!/bin/bash

# This user patches script runs right before starting the daemons.
# That means, all the other configuration is in place, so the script
# can make final adjustments.
# If you modify any supervisord configuration, make sure to run
# "supervisorctl update" or "supervisorctl reload" afterwards.

# For more information, see
# https://docker-mailserver.github.io/docker-mailserver/edge/config/advanced/override-defaults/user-patches/

# Install missing decoders for amavis

echo "INFO: Installing additional packages for amavis (zoo, ripole, zstd)..."
apt-get update -q
apt-get install -y -q zoo ripole zstd

# The following command is important to ensure amavis knows about the new tools
# It checks for available decompression tools and updates its internal list.
/usr/sbin/amavisd-new show-decode-versions

echo "INFO: Finished installing additional packages."



echo 'user-patches.sh successfully executed'
