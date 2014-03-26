#!/bin/bash

. ../functions.sh

#
# '[^eu]rro'
#
# Essa regex casa com palavras que contenham qualquer caractere, exceto as
# letras 'e' e 'u', seguido por 'rro', como 'forro' e 'gorro'
#

colored_echo "[^eu]rro" "casa com:"
grep --color '[^eu]rro' lista-negada.txt

echo; colored_echo "[^eu]rro" "não casa com:"
grep -v '[^eu]rro' lista-negada.txt

#
# '[^a-z ]' e '[^[:lower:] ]'
#
# Essas duas regexes tem o mesmo efeito. Elas casam com palavras que não
# tenham uma letra minúscula ou um espaço. Uma outra forma, mais verborrágica e
# menos elegante, de traduzir essa regex seria
# '[^abcdefghijklmnopqrstuvwxyz ]'.
#
# A notação [:lower:] e suas similares são comuns em aplicativos unix, como
# grep, mas raramente são encontradas em linguagens de programação.
#

echo; colored_echo "[^a-z ]" "casa com:"
grep --color '[^a-z ]' lista-negada-com-intervalo.txt

echo; colored_echo "[^a-z ]" "não casa com:"
grep -v '[^a-z ]' lista-negada-com-intervalo.txt


echo; colored_echo "[^[:lower:] ]" "casa com:"
grep --color '[^[:lower:] ]' lista-negada-com-intervalo.txt

echo; colored_echo "[^[:lower:] ]" "não casa com:"
grep -v '[^[:lower:] ]' lista-negada-com-intervalo.txt
