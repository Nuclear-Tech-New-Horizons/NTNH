#!/bin/bash

echo "Checking for script updates..."

# Получение последнего тега с GitHub
LATEST_TAG=$(curl -s https://api.github.com/repos/Nuclear-Tech-New-Horizons/NTNH/tags | jq -r '.[0].name')

# Проверка текущей версии скрипта
if [ -f current_version.txt ]; then
    CURRENT_TAG=$(cat current_version.txt)
    if [ "$CURRENT_TAG" == "$LATEST_TAG" ]; then
        echo "Script is up to date."
    else
        echo "Updating script to version $LATEST_TAG..."
        # Скачивание новой версии скрипта
        curl -s -L "https://raw.githubusercontent.com/Nuclear-Tech-New-Horizons/NTNH/$LATEST_TAG/+UpdateScript_DoYouTrustMe-client.sh" -o +UpdateScript_DoYouTrustMe-client.sh.new
        if [ $? -eq 0 ]; then
            # Замена текущего скрипта
            mv +UpdateScript_DoYouTrustMe-client.sh.new +UpdateScript_DoYouTrustMe-client.sh
            chmod +x +UpdateScript_DoYouTrustMe-client.sh
            echo "Script updated. Restarting..."
            # Перезапуск скрипта с теми же аргументами
            exec ./+UpdateScript_DoYouTrustMe-client.sh "$@"
        else
            echo "Failed to download script update. Continuing with current version..."
        fi
    fi
else
    echo "No current_version.txt found. Proceeding with update..."
fi

echo "Checking for game updates..."

# Проверка текущей версии игры
if [ -f current_version.txt ]; then
    CURRENT_TAG=$(cat current_version.txt)
    if [ "$CURRENT_TAG" == "$LATEST_TAG" ]; then
        echo "Game files are already up to date."
        read
        exit 0
    fi
fi

echo "Updating game files to version $LATEST_TAG..."
echo "Do you trust me? This script will delete all configs and mods, press Enter to continue."
read

# Создание папки для кэша, если её нет
if [ ! -d cache ]; then
    mkdir cache
fi

# Проверка наличия кэшированного zip-файла
ZIP_FILE="cache/NTNH_$LATEST_TAG.zip"
if [ -f "$ZIP_FILE" ]; then
    echo "Using cached zip file..."
else
    echo "Downloading latest version..."
    curl -s -L "https://github.com/Nuclear-Tech-New-Horizons/NTNH/archive/refs/tags/$LATEST_TAG.zip" -o "$ZIP_FILE"
fi

# Удаление существующих файлов и папок
echo "Deleting old files..."
rm -rf config mods scripts serverutilities MODLIST.txt icon.png README.md LICENSE

# Распаковка zip-архива
echo "Extracting files..."
mkdir temp_extract
unzip -q "$ZIP_FILE" -d temp_extract

# Поиск распакованной папки
EXTRACTED_FOLDER=$(find temp_extract -type d -name "NTNH-*")

# Перемещение файлов
echo "Moving new files..."
mv "$EXTRACTED_FOLDER/config" .
mv "$EXTRACTED_FOLDER/mods" .
mv "$EXTRACTED_FOLDER/scripts" .
mv "$EXTRACTED_FOLDER/serverutilities" .
mv "$EXTRACTED_FOLDER/CODEOWNERS" .
mv "$EXTRACTED_FOLDER/icon.png" .
mv "$EXTRACTED_FOLDER/LICENSE" .
mv "$EXTRACTED_FOLDER/MODLIST.txt" .
mv "$EXTRACTED_FOLDER/README.md" .

# Очистка временных файлов
echo "Cleaning up..."
rm -rf temp_extract

# Сохранение текущей версии
echo "$LATEST_TAG" > current_version.txt

echo "UPDATED SUCCESSFULLY! THANK YOU FOR TRUSTING ME!"
read