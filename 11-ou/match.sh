#!/bin/bash

. ../functions.sh

#
# 'batman|robin'
#
# essa regex casa com linhas que tenham 'batman' ou 'robin'
#

colored_echo "batman|robin" "casa com:"
egrep --color 'batman|robin' ou.txt

echo; colored_echo "batman|robin" "não casa com:"
egrep -v 'batman|robin' ou.txt
