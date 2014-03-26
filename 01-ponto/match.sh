#!/bin/bash

. ../functions.sh

#
# '.ato'
#
# Essa regex casa com uma palavra que tenha um caractere qualquer seguido de
# 'ato'. Exemplo: casa 'gato', 'mato' e  'sapato'.
#

colored_echo ".ato" "casa com:"
grep --color '.ato' ponto.txt

echo; colored_echo ".ato" "não casa com:"
grep -v '.ato' ponto.txt
