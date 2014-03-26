#!/usr/bin/env node

//
// Você pode criar regex inline, o que faz com que a regex sem compilada
// quando o script é lido.
//
// Caso seja necessario contruir um regex em tempo de execução, é preciso usar
// o construtor, que recebe uma string como parametro.
//
// var pattern = new RegExp("^(\w*):\/\/([-a-zA-Z0-9_+.]*)(\/.*)?");
//

var pattern = /^(\w*):\/\/([-a-zA-Z0-9_+.]*)(\/.*)?/;

//
// match retorna um array com informações sobre o resultado do casamento.
//

var match = pattern.exec('http://deniscostadsc.com/programming/2014/02/01/login-com-curl.html');

console.log({
    protocol: match[1],
    domain: match[2],
    path: match[3],
});

//
// O método test retornr um booleano caso a regex case com e string passada
// como parâmetro.
//

if (pattern.test('http://deniscostadsc.com/programming/2014/02/01/login-com-curl.html')){
    console.log('É uma url!');
} else {
    console.log('Não sei o que é isso. 8(');
}

//
// É possível usar regex em javascript nos métodos de string.
//

var url = 'http://deniscostadsc.com/programming/2014/02/01/login-com-curl.html';

match = url.match(pattern);

console.log({
    protocol: match[1],
    domain: match[2],
    path: match[3],
});

//
// O método match, específicamente tem a mesma saída do método exec do objeto
// RegExp. Ainda podemos usar expressões regulares no métodos search, replace e
// split do objeto string.
//
// Para mais informações acesse:
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions
//
