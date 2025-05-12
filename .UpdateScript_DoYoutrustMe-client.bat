echo off
cls
echo Do you trust me?
echo Press for "Yes"
PAUSE
rmdir /s /q config
rmdir /s /q USDYTM
rmdir /s /q mods
rmdir /s /q scripts
rmdir /s /q serverutilities
del MODLIST.txt
del icon.png
del README.md
del LICENSE
git clone https://github.com/Nuclear-Tech-New-Horizons/USDYTM.git
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