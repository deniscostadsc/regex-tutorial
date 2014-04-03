#!/usr/bin/env python
# coding: utf-8

#
# É necessário importar o módulo de expressões regulares
#

import re

#
# Em Python é recomendado usar 'raw strings' para usar expressões regulares.
# A analise léxica do Python, antes de qualquer coisa, interpreta os caracteres
# especiais (\n, \t...). Isso pode atrapalhar o uso de regex pois é comum o uso
# de escapes (\), as raw string, string no formato r'algo', não interpretam
# esses caracteres especiais.
#
# Exemplo:
#
# Para casar a string '\n' literal com raw strings:
#
# r'\n'
#
# com string normal
#
# '\\\\n'
#
# http://docs.python.org/2/reference/lexical_analysis.html#string-literals
#

time_str_pattern = r'([0-1]\d|2[0-3])(:[0-5]\d){2}'

#
# A função compile do módulo re deixa em cache as expressões regulares, o que
# pode deixar seu funcionamento ligeiramente mais rápido. Mas se o seu programa
# usa poucas regexes e poucas vezes isso não deve ser uma preocupação. Essa
# função retorna um objeto do tipo Pattern.
#
# Você pode ainda usar os métodos direto do módulo sem compilar as regexes.
# Assim, você precisa passar como primeiro parâmetro a expressão regular.
#
# O método match ficaria assim, sem compilar a regex:
#
# re.match(r'([0-1]\d|2[0-3])(:[0-5]\d){2}', '13:45:43')
#
# É possível passar parâmetros para o método compile que modificam o
# comportamento das regex. são ele:
#
# re.DEBUG
# re.I ou re.IGNORECASE
# re.L ou re.LOCALE
# re.M ou re.MULTILINE
# re.S ou re.DOTALL
# re.U ou re.UNICODE
# re.X ou re.VERBOSE
#
# A regex a seguir case com 'denis', 'Denis' e 'DENIS'.
#
# re.compile('denis', re.IGNORECASE)
#

time_pattern = re.compile(time_str_pattern)

#
# Os métodos match e search tem comportamentos bem parecidos com a diferença
# que o match sempre busca o padrão no início da string passada como parâmetro.
#
# Essas métodos retornam objetos do tipo match. Os métodos mais importante do
# objeto match possui os seguintes métodos.
#
# end - retorna a posição na string onde a regex parou de casar
# group - recebe um índice e retorna a string do grupo do índice
# groupdict - retorn um dicionário com os grupos nomeados.
# re - retorn a regex utilizada
# start - retorna a posição na string onde a regex começou a casar
#

matched = time_pattern.match('13:45:43')
print(matched.group(0), matched.group(1), matched.group(2))

#
# O método findall retorna todos as string que casaram com a regex.
#

txt = "as opções são comunista, capitalista, anarquista ou motorista."
print(re.findall(r'\w+ista', txt))

#
# O método sub substitiu o que casar com a rege por um texto.
#

txt = "meu telefone é +55 12 12345678."
print(re.sub(r'(\+\d{,2})? (\d{2}) (\d{8})', '***confidencial***', txt))

#
# Para mais informações acesse: https://docs.python.org/2/library/re.html
#
