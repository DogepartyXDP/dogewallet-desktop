#!/bin/sh
# DogeWallet - Linux installer script
# Handles installing DogeWallet and integrating with window manager
###########################################################
basedir=/usr/share
echo "### Creating installation directories..."
mkdir -vp $basedir/DogeWallet
mkdir -vp $basedir/icons/DogeWallet
mkdir -vp $basedir/applications
echo "### Installing DogeWallet..."
cp -a * $basedir/DogeWallet/
cp DogeWallet.png $basedir/icons/DogeWallet/
echo "### Integrating DogeWallet with linux desktop..."
cp DogeWallet.desktop $basedir/applications
echo "### Setting file permissions..."
chmod 644 $basedir/icons/DogeWallet/DogeWallet.png 
chmod 644 $basedir/applications/DogeWallet.desktop
chmod 755 $basedir/DogeWallet/*
echo "### Updating desktop database..."
/usr/bin/update-desktop-database
echo "### Installation Complete!"