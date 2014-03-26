#!/bin/bash

. ../functions.sh

#
# 'agh\?ath\?a' e 'agh?ath?a'
#
# Essas duas regexes, apesar de terem uma sintaxe diferente, dependendo
# da implementação de expressões regulares que você estiver usando elas têm
# o mesmo resultado. grep e egrep, têm o o mesmo resultado com as respectivas
# regexes.
#
# Outras diferenças em determinados metacaracteres podem ocorrer. Verifique
# a documantação do software/linguagem que for usar regex.
#

colored_echo "agh\?ath\?a" "(no grep) casa com:"
grep --color 'agh\?ath\?a' opcional.txt

echo; colored_echo "agh\?ath\?a" "(no grep) não casa com:"
grep -v 'agh\?ath\?a' opcional.txt


echo; colored_echo "agh?ath?a" "(no egrep) casa com:"
egrep --color 'agh?ath?a' opcional.txt

echo; colored_echo "agh?ath?a" "(no egrep) não casa com:"
egrep -v 'agh?ath?a' opcional.txt
