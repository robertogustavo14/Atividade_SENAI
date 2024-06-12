Algoritmo "exercicio 4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :  Claudio Iwakami 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2020
Var
// Seção de Declarações das variáveis 
matri:vetor [1..10] de inteiro
i,x:inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
i<-1
repita
matri[i]<-i
i<-i+1
ate i>10
I<-1
repita
escreval("Digite qual o numero da matricula a ser consultada:")
leia (x)
se x<=10 entao
escreval ("Os dados na matricula são:")
escreval (matri[x])
senao
escreval("Matricula não encontrada")
fimse
i<-i+1
ate i>3
Fimalgoritmo