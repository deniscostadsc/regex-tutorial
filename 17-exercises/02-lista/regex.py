'''
Nesse exer você deve casar linha que tenham 'b' ou 'c' seguido de uma vogal,
duas vezes seguidas.

exemplo: "baba", "caca", ou "cabo"

Para fixação, usar o '[]' (lista).
'''
import re
import sys

REGEX = r''

lines = sys.stdin.readlines()

for line in lines:
    if re.search(REGEX, line):
        print(line.replace('\n', ''))
