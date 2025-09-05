#!/bin/bash

# Масив із сайтами
sites=("https://google.com" "https://facebook.com" "https://twitter.com")

# Ім'я лог-файлу
log_file="website_status.log"

# Очищаємо файл перед записом
> "$log_file"

# Перевірка кожного сайту
for site in "${sites[@]}"; do
    status_code=$(curl -L -s -o /dev/null -w "%{http_code}" "$site")
    if [ "$status_code" -eq 200 ]; then
        echo "$site is UP" | tee -a "$log_file"
    else
        echo "$site is DOWN" | tee -a "$log_file"
    fi
done

echo "Результати записано у файл $log_file"
