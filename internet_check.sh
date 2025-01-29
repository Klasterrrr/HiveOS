#!/bin/bash

# Функция проверки наличия интернета
check_internet() {
    result=$(ping -c 1 google.com > /dev/null 2>&1)
    return $?
}

# Основная часть скрипта
while true; do
    if ! check_internet; then
        echo "Интернет отсутствует, останавливаем майнер."
        # Команда для выключения оборудования (замените на соответствующую команду)
        sudo shutdown -h now
    else
        echo "Интернет доступен, продолжаем майнить."
    fi
    sleep 60  # Проверка каждые 60 секунд
done