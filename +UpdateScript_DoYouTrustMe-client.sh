#!/bin/bash
clear
echo "Do you trust me? Press any key to continue..."
read -n 1 -s
rm -rf config mods scripts serverutilities MODLIST.txt icon.png README.md LICENSE
git clone https://github.com/Nuclear-Tech-New-Horizons/NTNH.git
mv USDYTM/config .
mv USDYTM/mods .
mv USDYTM/scripts .
mv USDYTM/serverutilities .
mv USDYTM/CODEOWNERS .
mv USDYTM/icon.png .
mv USDYTM/LICENSE .
mv USDYTM/MODLIST.txt .
mv USDYTM/README.md .
echo "UPDATED SUCCESSFULY! THANK YOU FOR TRUSTING ME!"
rm -rf NTNH
read -n 1 -s