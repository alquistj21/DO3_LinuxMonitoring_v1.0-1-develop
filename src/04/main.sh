#!/bin/bash

FLAG_COLOR_DEFAULT=0

source config.cfg

column1_background=${column1_background:=${default_column1_background}}
column1_font_color=${column1_font_color:=${default_column1_font_color}}
column2_background=${column2_background:=${default_column2_background}}
column2_font_color=${column2_font_color:=${default_column2_font_color}}

# Проверка входных параметров
source parameter_check.sh

# Функция в которой устанавливается цвет
source color_selection.sh

# Вывод результата
source color_parametr_printin.sh

exit 0
