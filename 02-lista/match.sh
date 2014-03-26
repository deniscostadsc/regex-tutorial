#!/bin/bash

. ../functions.sh

#
# '[eu]rro'
#
# Essa regex casa com palavras que contenham as letras 'e' ou 'u' seguido
# por 'rro', como 'berro', 'urro' e 'burro'.
#

colored_echo "[eu]rro" "casa com:"
grep --color '[eu]rro' lista.txt

echo; colored_echo "[eu]rro" "não casa com:"
grep -v '[eu]rro' lista.txt

#
# '[a-z ]' e '[[:lower:] ]'
#
# Essas duas regexes tem o mesmo efeito. Elas casam com palavras que tenham um
# ou uma letra minúscula ou um espaço. Uma outra forma, mais verborrágica e
# menos elegante, de traduzir essa regex seria '[abcdefghijklmnopqrstuvwxyz ]'.
#
# A notação [:lower:] e suas similares são comuns em aplicativos unix, como
# grep, mas raramente são encontradas em linguagens de programação.
#

echo; colored_echo "[a-z ]" "casa com:"
grep --color '[a-z ]' lista-com-intervalo.txt

echo; colored_echo "[a-z ]" "não casa com:"
grep -v '[a-z ]' lista-com-intervalo.txt


echo; colored_echo "[[:lower:] ]" "casa com:"
grep --color  '[[:lower:] ]' lista-com-intervalo.txt

echo; colored_echo "[[:lower:] ]" "não casa com:"
grep -v  '[[:lower:] ]' lista-com-intervalo.txt
