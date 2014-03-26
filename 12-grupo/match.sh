#!/bin/bash

. ../functions.sh

#
# '\(teco\)-\1'
#
# essa regex casa com linhas que tenham uma palavra tenha 'teco' seguida
# por um '-' seguida pelo que casou no grupo. Para isso foi usado um
# retrovisor. Um metacaractere que é uma referência à regex dentro do grupo
# correspondente.
#
# Exemplo: se a regex é '\(teco\)-\1', '\1' será 'teco'. O mesmo resultado se
# escrevessemos 'teco-teco'.
#

colored_echo "\(teco\)-\1" "casa com:"
grep --color '\(teco\)-\1' grupo.txt

echo; colored_echo "\(teco\)-\1" "não casa com:"
grep -v '\(teco\)-\1' grupo.txt
