#!/bin/bash

set -e

echo "This script will DELETE local server files and REPLACE them from the GitHub repository."
echo "Do you want to continue? Type 'yes' to proceed:"
read -r confirm

if [[ "$confirm" != "yes" ]]; then
    echo "Operation cancelled by user."
    exit 1
fi

if [ -d "NTNH" ]; then
    echo "Removing old NTNH clone..."
    rm -rf "NTNH"
fi

echo "Cloning repository..."
git clone -b server/forge https://github.com/Nuclear-Tech-New-Horizons/NTNH.git

echo "Removing old server files..."
rm -rf config mods scripts serverutilities MODLIST.txt icon.png README.md LICENSE README.md CODEOWNERS

echo "Moving updated files from NTNH..."
mv NTNH/* .

echo "Cleaning up..."
rm -rf NTNH

echo "UPDATED SUCCESSFULLY! THANK YOU FOR TRUSTING ME!"
