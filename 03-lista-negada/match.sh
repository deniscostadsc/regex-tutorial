#!/bin/bash

. ../functions.sh

#
# '[^eu]rro'
#
# Essa regex casa com palavras que contenham qualquer caractere, exceto as
# letras 'e' e 'u', seguido por 'rro', como 'forro' e 'gorro'
#

colored_echo "[^eu]rro" "casa com:"
egrep --color '[^eu]rro' lista-negada.txt

echo; colored_echo "[^eu]rro" "não casa com:"
egrep -v '[^eu]rro' lista-negada.txt

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
egrep --color '[^a-z ]' lista-negada-com-intervalo.txt

echo; colored_echo "[^a-z ]" "não casa com:"
egrep -v '[^a-z ]' lista-negada-com-intervalo.txt


echo; colored_echo "[^[:lower:] ]" "casa com:"
egrep --color '[^[:lower:] ]' lista-negada-com-intervalo.txt

echo; colored_echo "[^[:lower:] ]" "não casa com:"
egrep -v '[^[:lower:] ]' lista-negada-com-intervalo.txt
