#!/bin/bash

. ../functions.sh

#
# 'a+b' e 'a\+b'
#
# Essa regexes casam com uma palavra que tenha 1 ou mais letras 'a' seguido
# de uma letra 'b'
#

colored_echo "a\+b" "(no grep) casa com:"
grep --color 'a\+b' mais.txt

echo; colored_echo "a\+b" "(no grep) não casa com:"
grep -v 'a\+b' mais.txt


echo; colored_echo "a+b" "(no egrep) casa com:"
egrep --color 'a+b' mais.txt

echo; colored_echo "a+b" "(no egrep) não casa com:"
egrep -v 'a+b' mais.txt