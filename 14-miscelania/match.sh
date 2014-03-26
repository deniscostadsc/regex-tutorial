#!/bin/bash

. ../functions.sh

#
# '\b([A-Z]\.)+[A-Z]\.?\b'
#
# Essa regex casa com siglas como 'A.B.C.' ou 'A.B.C'. Ela casa com uma
# palavra que comece com ume letras maiúscula seguida de um '.' 1 ou mais
# vezes. E essa palavra que acabar com uma letra maiúscula com 0 ou 1 '.'.
#

colored_echo "\\\b([A-Z]\.)+[A-Z]\.?\\\b" "casa com:"
egrep --color '\b([A-Z]\.)+[A-Z]\.?\b' siglas.txt

echo; colored_echo "\\\b([A-Z]\.)+[A-Z]\.?\\\b" "não casa com:"
egrep -v '\b([A-Z]\.)+[A-Z]\.?\b' siglas.txt

#
# '^([0-1][0-9]|2[0-3])(:[0-5][0-9]){2}'
#
# Essa regex casa com horários brasileiros '08:45:28'. Ela casa com linhas
# que comecem com o intervalo de 0 a 1 seguido do intervalo 0-9 ou 2 seguido do
# intervalo de 0-3, isso seguido de duas ocorrências de um intervalo de 0-5 e
# um intervalo de 0-9.
#

echo; colored_echo "^([0-1][0-9]|2[0-3])(:[0-5][0-9]){2}" "casa com:"
egrep --color '^([0-1][0-9]|2[0-3])(:[0-5][0-9]){2}' horas.txt

echo; colored_echo "^([0-1][0-9]|2[0-3])(:[0-5][0-9]){2}" "não casa com:"
egrep -v '^([0-1][0-9]|2[0-3])(:[0-5][0-9]){2}' horas.txt
