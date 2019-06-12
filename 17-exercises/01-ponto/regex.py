'''
Nesse exer você deve casar linha que tem 'tio', mas que tenham 1 caractere
antes.

Para fixação, usar o '.' (ponto).
'''
import re
import sys

REGEX = r''

lines = sys.stdin.readlines()

for line in lines:
    if re.search(REGEX, line):
        print(line.replace('\n', ''))
