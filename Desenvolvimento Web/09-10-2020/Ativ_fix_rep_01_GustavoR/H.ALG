Algoritmo "h"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :  Claudio Iwakami 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/10/2020
Var
b:real
ex:inteiro
temp:inteiro
resu:real
resu2:real
tempo1:inteiro
resultado:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("Insira o numero da base")
leia (b)
escreval ("Insira o do expoente")
leia (ex)
tempo1<-0
para tempo1 de 1 ate (ex) faca
enquanto tempo1<ex faca
 resu<- b * b
 resu2<-resu
 resultado<-resu2*b
 tempo1<-tempo1 +1
 escreval (resultado)

 fimenquanto
 fimpara
fimalgoritmo