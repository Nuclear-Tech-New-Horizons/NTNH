@echo off
cls
echo "Do you trust me? This script will delete all configs and mods, press any button to continue."
PAUSE

:: Удаление существующих файлов и папок
rmdir /s /q config
rmdir /s /q mods
rmdir /s /q scripts
rmdir /s /q serverutilities
del MODLIST.txt
del icon.png
del README.md
del LICENSE

:: Получение имени последнего тега через GitHub API с помощью PowerShell
for /f "delims=" %%i in ('powershell -command "(Invoke-RestMethod https://api.github.com/repos/Nuclear-Tech-New-Horizons/NTNH/tags).name | Select-Object -First 1"') do set LATEST_TAG=%%i

:: Загрузка zip-архива последней версии
powershell -command "Invoke-WebRequest -Uri https://github.com/Nuclear-Tech-New-Horizons/NTNH/archive/refs/tags/%LATEST_TAG%.zip -OutFile temp.zip"

:: Создание временной папки для распаковки
mkdir temp_extract

:: Распаковка zip-архива во временную папку
powershell -command "Expand-Archive -Path temp.zip -DestinationPath temp_extract"

:: Поиск папки, начинающейся с NTNH- в temp_extract
for /d %%i in (temp_extract\NTNH-*) do set EXTRACTED_FOLDER=%%i

:: Перемещение необходимых папок и файлов в текущую директорию
move "%EXTRACTED_FOLDER%\config" "."
move "%EXTRACTED_FOLDER%\mods" "."
move "%EXTRACTED_FOLDER%\scripts" "."
move "%EXTRACTED_FOLDER%\serverutilities" "."
move "%EXTRACTED_FOLDER%\CODEOWNERS" "."
move "%EXTRACTED_FOLDER%\icon.png" "."
move "%EXTRACTED_FOLDER%\LICENSE" "."
move "%EXTRACTED_FOLDER%\MODLIST.txt" "."
move "%EXTRACTED_FOLDER%\README.md" "."

:: Удаление временных файлов и папок
del temp.zip
rmdir /s /q temp_extract

echo "UPDATED SUCCESSFULLY! THANK YOU FOR TRUSTING ME!"
PAUSE