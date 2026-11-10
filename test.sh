#!/bin/bash

# Делаем запрос к локальному контейнеру и вытаскиваем только HTTP код
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080)

if [ "$STATUS_CODE" -eq 200 ]; then
  echo "✅ Тест пройден: Nginx вернул код 200."
  exit 0
else
  echo "❌ Ошибка: Ожидался код 200, но сервер вернул $STATUS_CODE."
  exit 1
fi
