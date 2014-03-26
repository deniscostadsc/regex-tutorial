#!/bin/bash

. ../functions.sh

#
# 'a\{0,\}b'
#
# Essa regex casa com uma palavra que 0 ou mais, letras 'a' seguido de uma
# letra 'b'. Tem o mesmo efeito de a*b.
#

colored_echo "a\{0,\}b" "casa com:"
grep --color 'a\{0,\}b' chaves.txt

echo; colored_echo "a\{0,\}b" "não casa com:"
grep -v 'a\{0,\}b' chaves.txt

#
# 'a\{1,\}b'
#
# Essa regexes casam com uma palavra que tenha 1 ou mais letras 'a' seguido
# de uma letra 'b'. Tem o mesmo efeito de a+b
#

echo; colored_echo "a\{1,\}b" "casa com:"
grep --color 'a\{1,\}b' chaves.txt

echo; colored_echo "a\{1,\}b" "não casa com:"
grep -v 'a\{1,\}b' chaves.txt

#
# 'a\{0,1\}b'
#
# Essa regexes casam com uma palavra que tenha 1 ou mais letras 'a' seguido
# de uma letra 'b'. Tem o mesmo efeito de a+b
#

echo; colored_echo "a\{0,1\}b" "casa com:"
grep --color 'a\{0,1\}b' chaves.txt

echo; colored_echo "a\{0,1\}b" "não casa com:"
grep -v 'a\{0,1\}b' chaves.txt

#
# Normalmente, nas implementações de regex '?', '+' e '*' são alias para
# '{0, 1}', '{1,}' e '{0,}' respectivamente.
#
