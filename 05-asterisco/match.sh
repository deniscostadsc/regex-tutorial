    #!/bin/bash

. ../functions.sh

#
# 'a*b'
#
# Essa regex casa com uma palavra que tenha qualquer quantidade, ou seja
# 0 ou mais, letras 'a' seguido de uma letra 'b'
#

colored_echo "a*b" "casa com:"
grep --color 'a*b' asterisco.txt # shellcheck disable=SC2022

echo; colored_echo "a*b" "não casa com:"
grep -v 'a*b' asterisco.txt
