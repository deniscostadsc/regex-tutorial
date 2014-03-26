#!/bin/bash

. ../functions.sh

#
# 'amor\.'
#
# Essa regex casa com qualquer linha que tenha 'amor' seguida de um '.'
# literal.
#

colored_echo "amor\." "casa com:"
egrep --color 'amor\.' escape.txt

echo; colored_echo "amor\." "não casa com:"
egrep -v 'amor\.' escape.txt
