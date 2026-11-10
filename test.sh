#!/bin/bash
if grep -q "Success" index.html; then
  echo "✅ Тест пройден: Страница работает корректно."
  exit 0
else
  echo "❌ Ошибка: Ключевое слово 'Success' не найдено!"
  exit 1
fi
