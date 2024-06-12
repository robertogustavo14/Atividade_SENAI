Algoritmo "enquanto"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :  Claudio Iwakami 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/10/2020
Var
x,y,stop,resua,resu,temp:inteiro
repi:caracter
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
cronometro on
x<-1
y<-1
repi<-"sim"
enquanto repi="sim" faca
stop<-stop+105
enquanto stop>temp faca
resu<-x+y
escreval (x,"+",y,"=",resu)
x<-y
y<-resu
temp<-temp+1
fimenquanto
escreval("Deseja ver mais 105 numeros? (sim)(nao)")
leia (repi)
fimenquanto
cronometro off
Fimalgoritmo