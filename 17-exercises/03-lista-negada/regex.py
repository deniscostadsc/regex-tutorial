'''
Nesse exer você deve casar linha que tenham alguma consoante seguida de 'aba'.

Para fixação, usar o '[^]' (lista negada).
'''
import re
import sys

REGEX = r''

lines = sys.stdin.readlines()

for line in lines:
    if re.search(REGEX, line):
        print(line.replace('\n', ''))
