Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :  Claudio Iwakami 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 23/10/2020
Var
// Seção de Declarações das variáveis 
seg,pri:inteiro
tro:caracter
nome:vetor [1..20] de caracter
i:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
i<-1
repita
escreval("Insira a ",i," palavra")
leia (nome[i])
i<-i+1
ate i>20
para pri de 1 ate 20 faca
para seg de pri+1 ate 20 faca
se nome[pri]<nome[seg] entao
tro<-nome[pri]
nome[pri]<-nome[seg]
nome[seg]<-tro
fimse
fimpara
fimpara
 escreval("Os nomes em ordem alfabetica são:")
 i<-1
 repita
 escreval (nome[i])
 i<-i+1
 ate i>20
 
Fimalgoritmo