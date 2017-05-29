#!/bin/bash

. ../functions.sh

#
# 'agh?ath?a'
#
# Essa regex casa com 'ag' seguido de um 'h', que pode ou não existir, ou seja
# é opcional, seguido de 'at' seguido de outro 'h' opcional, seguido de um 'a'.
#

colored_echo "agh?ath?a" "casa com:"
egrep --color 'agh?ath?a' opcional.txt

echo; colored_echo "agh?ath?a" "não casa com:"
egrep -v 'agh?ath?a' opcional.txt
