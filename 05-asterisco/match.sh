    #!/bin/bash

. ../functions.sh

#
# 'a*b'
#
# Essa regex casa com uma palavra que tenha qualquer quantidade, ou seja
# 0 ou mais, letras 'a' seguido de uma letra 'b'
#

colored_echo "a*b" "casa com:"
egrep --color 'a*b' asterisco.txt

echo; colored_echo "a*b" "não casa com:"
egrep -v 'a*b' asterisco.txt
