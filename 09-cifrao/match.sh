#!/bin/bash

. ../functions.sh

#
# 'do$'
#
# Essa regex casa com linhas terminem com 'do'.
#

colored_echo 'do$' "casa com:"
egrep --color 'do$' cifrao.txt

echo; colored_echo 'do$' "não casa com:"
egrep -v 'do$' cifrao.txt
