#!/usr/bin/env bash

# Скрипт для встановлення необхідних шрифтів та іконок для Waybar (Arch Linux)
# Шрифти, що використовуються в конфігурації:
# 1. SpaceMono Nerd Font ("ttf-space-mono-nerd")
# 2. Font Awesome ("otf-font-awesome")
# 3. JetBrainsMono Nerd Font ("ttf-jetbrains-mono-nerd")
# 4. Nerd Fonts Symbols ("ttf-nerd-fonts-symbols", "ttf-nerd-fonts-symbols-mono")
# 5. Roboto ("ttf-roboto")

set -e

echo "================================================="
echo "  Перевірка та встановлення іконок/шрифтів Waybar"
echo "================================================="

if ! command -v pacman &> /dev/null; then
    echo "[!] Помилка: pacman не знайдено. Скрипт розрахований на Arch Linux."
    exit 1
fi

PACKAGES=(
    "otf-font-awesome"
    "ttf-space-mono-nerd"
    "ttf-jetbrains-mono-nerd"
    "ttf-nerd-fonts-symbols"
    "ttf-nerd-fonts-symbols-mono"
    "ttf-roboto"
)

echo "[+] Встановлення необхідних пакетів..."
sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

echo "[+] Оновлення кешу шрифтів (fc-cache)..."
fc-cache -fv

echo "================================================="
echo "  Всі шрифти та іконки успішно встановлені!"
echo "  Ви можете перезапустити Waybar:"
echo "  killall waybar && waybar &"
echo "================================================="
