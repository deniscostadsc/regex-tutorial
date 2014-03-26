#!/bin/bash

. ../functions.sh

#
# \bboom
#
# Essa regex casa com palavras que comecem com 'boom'
#

colored_echo "\\\bboom" "casa com:"
egrep --color '\bboom' borda.txt

echo; colored_echo "\\\bboom" "não casa com:"
egrep -v '\bboom' borda.txt

#
# boom\b
#
# Essa regex casa com palavras que terminem com 'boom'
#

echo; colored_echo "boom\\\b" "casa com:"
egrep --color 'boom\b' borda.txt

echo; colored_echo "boom\\\b" "não casa com:"
egrep -v 'boom\b' borda.txt

#
# \bboom\b
#
# # Essa regex casa com a palavra 'boom'
#

echo; colored_echo "\\\bboom\\\b" "casa com:"
egrep --color '\bboom\b' borda.txt

echo; colored_echo "\\\bboom\\\b" "não casa com:"
egrep -v '\bboom\b' borda.txt
