#!/bin/bash

# Проверка на пустой параметр
if [ -z "$1" ] 
then
  echo "Ошибка, параметр отсутсвует."
  exit 1
# Проверка на то что параметров больше 1
# $# - количество параметров переданных скрипту
elif [[ $# -gt 1 ]]
then
  echo "Ошибка, необходим только 1 параметр"
  exit 1
fi
# Проверка на то что 1-ый параметр в конце содержит знак "/"
if [[ ${DIRECTORY: - 1} != "/" ]]
then
  echo "Не верный путь, испольхуйте "/" "
  exit 1
fi
# Проверка существования каталога
if [[ ! -d "$1" ]]
then
  echo "Данной директории не существует"
  exit 1
fi
