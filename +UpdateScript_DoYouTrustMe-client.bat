echo off
cls
echo "Do you trust me? This script will delete all configs and mods, press any button to continue."
PAUSE
rmdir /s /q config
rmdir /s /q mods
rmdir /s /q scripts
rmdir /s /q serverutilities
del MODLIST.txt
del icon.png
del README.md
del LICENSE
git clone https://github.com/Nuclear-Tech-New-Horizons/NTNH.git
move "USDYTM\config" "."
move "USDYTM\mods" "."
move "USDYTM\scripts" "."
move "USDYTM\serverutilities" "."
move "USDYTM\CODEOWNERS" "."
move "USDYTM\icon.png" "."
move "USDYTM\LICENSE" "."
move "USDYTM\MODLIST.txt" "."
move "USDYTM\README.md" "."
echo "UPDATED SUCCESSFULY! THANK YOU FOR TRUSTING ME!"
rmdir /s /q NTNH
PAUSE