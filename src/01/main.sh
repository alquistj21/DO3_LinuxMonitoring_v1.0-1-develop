#!/bin/bash

# Подключаем скрипт для валидации ввода
source parametr_check.sh

# Подключаем скрипт для валидации числа
source number_check.sh "$1"

# Обработка введенных данных
source parametr_output.sh "$1"
