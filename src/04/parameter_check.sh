#!/bin/bash

color_str=(
    $column1_background
    $column1_font_color
    $column2_background
    $column2_font_color
)

# Проверка наличия параметров
if [[ $# -gt 0 ]]
then
  echo "Скрипт должен быть запущен без параметров. Используются цвета по умолчанию!"
  FLAG_COLOR_DEFAULT=1
  column1_background=${default_column1_background}
  column1_font_color=${default_column1_font_color}
  column2_background=${default_column2_background}
  column2_font_color=${default_column2_font_color}
fi

# Проверка параметров на наличие только цифр
for i in "${!color_str[@]}"
do 
  if [[ ${color_str[$i]} != *[[:digit:]]* ]]
  then
    echo "Все параметры должны быть цифрами! Используются цвета по умолчанию!"
    FLAG_COLOR_DEFAULT=1
    column1_background=${default_column1_background}
    column1_font_color=${default_column1_font_color}
    column2_background=${default_column2_background}
    column2_font_color=${default_column2_font_color}
  fi
done

# Проверка параметров на наличие цифр от 0 до 6
for i in "${!color_str[@]}"
do 
  if [[ (${color_str[$i]} -gt 6) || (${color_str[$i]} -lt 0) ]]
  then
    echo "Неверный номер цвета! Все параметры должны быть цифрами от 0 до 6. Используются цвета по умолчанию."
    FLAG_COLOR_DEFAULT=1
    column1_background=${default_column1_background}
    column1_font_color=${default_column1_font_color}
    column2_background=${default_column2_background}
    column2_font_color=${default_column2_font_color}
  fi
done

# Проверка параметров на совпадение цветов текста и фона:
# у первой пары параметров значения совпадают
# и у второй пары тоже, иначе на фоне не будет видно символов
for i in "${!color_str[@]}"
do 
  if [[ (($column1_background -eq $column1_font_color) && ($column1_background -ne 0))\
  || (($column2_background -eq $column2_font_color) && ($column2_background -ne 0)) ]]
  then
    echo "Цвет текста и фона совпадают. Используются цвета по умолчанию."
    FLAG_COLOR_DEFAULT=1
    column1_background=${default_column1_background}
    column1_font_color=${default_column1_font_color}
    column2_background=${default_column2_background}
    column2_font_color=${default_column2_font_color}
  fi
done