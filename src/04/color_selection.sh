#!/bin/bash

# Создание списка цветов
NAME_COLOR=(
    default
    white
    red
    green
    blue
    purple
    black
)

# Определение переменных с цветовыми кодами:
no='0'
white='37'
red='31'
green='32'
blue='36'
purple='35'
black='30'

# Массив кодов цветовых решений 
COLOR=(
    $no
    $white
    $red
    $green
    $blue
    $purple
    $black
)

function color {
    echo "\033[$((${COLOR[$1]} + 10))m\033[${COLOR[$2]}m"
}

# Создание строк с цветами:
color1=$(color $column1_background $column1_font_color)
color2=$(color $column2_background $column2_font_color)

# Сброс цветовых настроек
color_auto=$(color 0 0)
