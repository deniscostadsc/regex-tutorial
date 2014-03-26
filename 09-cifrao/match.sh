#!/bin/bash

. ../functions.sh

#
# 'do$'
#
# Essa regex casa com linhas terminem com 'do'.
#

colored_echo 'do$' "casa com:"
grep --color 'do$' cifrao.txt

echo; colored_echo 'do$' "não casa com:"
grep -v 'do$' cifrao.txt
