#!/bin/bash

. ../functions.sh

#
# '^d'
#
# Essa regex casa com as linhas que comecem a a letras 'd'. Não confundir
# com o circunflexo da lista negada.
#

colored_echo "^d" "casa com:"
grep --color '^d' circunflexo.txt

echo; colored_echo "^d" "não casa com:"
grep -v '^d' circunflexo.txt
