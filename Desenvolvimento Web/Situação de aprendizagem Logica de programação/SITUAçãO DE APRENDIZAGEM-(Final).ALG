 Algoritmo "Situação de aprendizagem"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :  Claudio Iwakami
// Autor(a)    : Gustavo Roberto Da Silva(lider),Guilherme de sena(sub-lider),Laura serva,Marcio Alves,Raphael Ferreira.
// Dicas de usabilidade do programa:ultilizar o cmd no modo tela cheia,na primeira vez o ponteiro de selecao nao aparece,mas funcionar normalmente
tipo
REGA=registro //REGA=registro do aluno
ps,cpfm,turma,telefone,COD:inteiro
nota1,nota2,nota3,nota4,notaps:real
dataps,datan,email,endereco,cpf,nome:caracter
fimregistro

REGP=registro //REGP=registro de professor
telefonep:inteiro
ativop:logico
emailp,enderecop,cpfp,nomep:caracter
fimregistro

Procedimento Turm1
inicio
i <- 1
enquanto i<40 faca
se turma1[i]=0 entao
turma1[i]<-coda
cada<-1
i<-i+40
escreval ("Cadastrado na turma 1")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
fim
fimprocedimento

procedimento turm2
inicio
i<-1
enquanto i<40 faca
se turma2[i]=0 entao
turma2[i]<-coda
cada<-1
i<-i+40
escreval ("Cadastrado na turma 2")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
fim
fimprocedimento

procedimento turm3
inicio
i <-1
enquanto i<40 faca
se turma3[i]=0 entao
turma3[i]<-coda
cada<-1
i<-i+40
escreval ("cadastrado na turma 3")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
fim
fimprocedimento

procedimento turm4
inicioi<-1
enquanto i<40 faca
se turma4[i]=0 entao
turma4[i]<-coda
cada<-1
i<-i+40
escreval ("cadastrado na turma 4")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
fim
fimprocedimento

Procedimento turm5
inicio
i<-1
enquanto i<40 faca
se turma5[i]=0 entao
turma5[i]<-coda
cada<-1
i<-i+40
escreval ("cadastrado na turma 5")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
fim
fimprocedimento

Procedimento fim
inicio
escreval ("Deseja voltar para a seleção de funcionalidades?(sim)(nao)")
leia (resp)
se (resp="nao") entao
loop<-0
fimse
Fimprocedimento

Var

//matriculas:
//cadastrar aluno
REGAV:vetor[1..40] de REGA
coda:inteiro
tocoda:inteiro
turma1:vetor [1..41] de inteiro
turma2:vetor [1..41] de inteiro
turma3:vetor [1..41] de inteiro
turma4:vetor [1..41] de inteiro
turma5:vetor [1..41] de inteiro
turma:inteiro
resp:caracter
cada:inteiro
i:inteiro
//cadastrar nova turma
//turma

//cadastrar docedente
REGPV:vetor [1..40] de REGP
codp:inteiro // codigo de professor
tocodp:inteiro // total de codigos de professor gerados
resp2:inteiro
loop2:inteiro
//processo seletivo
//consulta de dados
Apt:inteiro
am:inteiro
pa:inteiro
stop:inteiro
deci,deci2:inteiro
loop:inteiro
//Variavel pesq criada depois
pesq:inteiro
erro:inteiro
resp1:inteiro
l : inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
loop<-1
enquanto (loop=1) faca
limpatela
escreval (" ________________________________________________________________________ ")
escreval ("|                     --Seleção de funcionalidades--                     |")
Escreval ("|------------------------------------------------------------------------|")
escreval ("|                             --Matriculas--                             |")
escreval ("|------------------------------------------------------------------------|")
escreval ("|    01-Cadastrar novo aluno.                                            |")
escreval ("|    02-Cadastrar aluno em nova turma.                                   |")
escreval ("|    03-Cadastrar funcionario.                                           |")
escreval ("|    04-Situaçao funcionario.                                            |")
escreval ("|    05-Desativar funcionario.                                           |")
escreval ("|________________________________________________________________________|")
escreval (" ")
escreval (" ________________________________________________________________________ ")
escreval ("|                          --Processo Seletivo--                         |")
escreval ("|------------------------------------------------------------------------|")
escreval ("|    06-Cadastrar aluno no processo seletivo.                            |")
escreval ("|    07-Lançar nota do processo seletivo.                                |")
escreval ("|    08-Consulta de candidato.                                           |")
escreval ("|________________________________________________________________________|")
escreval (" ")
escreval (" ________________________________________________________________________ ")
escreval ("|                       --Consulta de Relatório--                        |")
escreval ("|------------------------------------------------------------------------|")
escreval ("|    09-Aluno por turma.                                                 |")
escreval ("|    10-Alunos matriculados.                                             |")
escreval ("|    11-Funcionarios ativos.                                             |")
escreval ("|    12-Alunos cadastrados no processo seletivo.                         |")
escreval ("|    13-Notas por aluno.                                                 |")
escreval ("|    14-Notas de aluno por turma.                                        |")
escreval ("|________________________________________________________________________|")
escreval (" ")
escreval (" ________________________________________________________________________ ")
escreval ("|                          --Notas dos Alunos--                          |")
escreval ("|------------------------------------------------------------------------|")
escreval ("|    15-Cadastrar nova nota.                                             |")
escreval ("|    16-Consultar nota.                                                  |")
escreval ("|    17-Situação Final.                                                  |")
escreval ("|________________________________________________________________________|")
deci<-0
leia (deci)
escolha (deci)
//opcao 1
caso 1
limpatela
coda<-tocoda+1
tocoda<-tocoda+1
REGAV[coda].ps<- 0
REGAV[coda].notaps<- 0
escreval ("Porfavor Insira o nome completo do aluno")
leia(REGAV[coda].NOME)
escreval ("Insira o CPF do aluno")
leia(REGAV[coda].cpf)
escreval("DIgite a data de nacismento do aluno")
leia(REGAV[coda].datan)
erro<-1
enquanto (erro = 1) faca
escreval ("Insira a nova turma para esse aluno(1 a 5)")
leia (resp1)
se (resp1 < 1) ou (resp1 > 5) entao
erro<-1
senao
erro<-2
fimse
fimenquanto
REGAV[coda].turma<-resp1
cada<-0
i<-1
escolha (REGAV[coda].turma)
caso 1
enquanto i<40 faca
se turma1[i]=0 entao
turma1[i]<-coda
cada<-1
i<-i+40
escreval ("cadastrado na turma")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
caso 2
enquanto i<40 faca
se turma2[i]=0 entao
turma2[i]<-coda
cada<-1
i<-i+40
escreval ("cadastrado na turma")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
caso 3
enquanto i<40 faca
se turma3[i]=0 entao
turma3[i]<-coda
cada<-1
i<-i+40
escreval ("cadastrado na turma")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
caso 4
enquanto i<40 faca
se turma4[i]=0 entao
turma4[i]<-coda
cada<-1
i<-i+40
escreval ("cadastrado na turma")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
caso 5
enquanto i<40 faca
se turma5[i]=0 entao
turma5[i]<-coda
cada<-1
i<-i+40
escreval ("cadastrado na turma")
senao
i<-i+1
fimse
fimenquanto
se (cada<>1) entao
escreval ("Nao ha vagas nessa turma")
fimse
fimescolha
escreval ("Insira o Endereço:")
leia(REGAV[coda].endereco)
escreval ("Insira um telefone para contato:")
leia(REGAV[coda].telefone)
escreval ("Insira um Email para contato:")
leia(REGAV[coda].email)
escreval ("Insira o CPF do responsavel:")
leia(REGAV[coda].cpfm)
escreval ("Parabens!! Voce foi cadastrado com sucesso.")
escreval ("")
Escreval ("O seu codigo de aluno é:CA",coda," não se esqueça dele ele é muito importante")
escreval("")
fim
//opçao 2
 caso 2
 limpatela



escreva ("Digite o codigo de aluno para mudar de turma:CA ")
leia(coda)
escreval ("Em qual turma o Aluno está cadastrado?")
leia(turma)
escolha turma
Caso 1
l <- 1
Enquanto (l < 40) e (turma1[l] <> coda) faca
l <- l+1
Fimenquanto
se (Turma1[l] = coda) entao
Turma1[l] <- 0
Escreval ("Aluno removido da turma", turma)
Escreval ("Em qual turma deseja Recolocar o Aluno?(1 a 5)")
Leia(turma)
escolha turma
caso 1
turm1
caso 2
turm2
caso 3
turm3
caso 4
Turm4
caso 5
turm5
fimescolha
Senao
Escreval ("Aluno não encontrado na turma", Turma)
fim
fimse
Caso 2
l <- 1
Enquanto (l < 40) e (turma2[l] <> coda) faca
l <- l+1
Fimenquanto
se (Turma2[l] = coda) entao
Turma2[l] <- 0
Escreval ("Aluno removido da turma", turma)
Escreval ("Em qual turma deseja Recolocar o Aluno?(1 a 5)")
Leia(turma)
escolha turma
caso 1
turm1
caso 2
turm2
caso 3
Turm3
caso 4
turm4
caso 5
Turm5
fimescolha
Senao
Escreval ("Aluno não encontrado na turma", Turma)
fim
fimse
Caso 3
l <- 1
Enquanto (l < 40) e (turma3[l] <> coda) faca
l <- l+1
Fimenquanto
se (Turma3[l] = coda) entao
Turma3[l] <- 0
Escreval ("Aluno removido da turma", turma)
Escreval ("Em qual turma deseja Recolocar o Aluno?(1 a 5)")
Leia(turma)
escolha turma
caso 1
Turm1
caso 2
turm2
caso 3
Turm3
caso 4
Turm4
caso 5
Turm5
fimescolha
Senao
Escreval ("Aluno não encontrado na turma", Turma)
fimse
fim
Caso 4
l <- 1
Enquanto (l < 40) e (turma4[l] <> coda) faca
l <- l+1
Fimenquanto
se (Turma4[l] = coda) entao
Turma4[l] <- 0
Escreval ("Aluno removido da turma", turma)
Escreval ("Em qual turma deseja Recolocar o Aluno?(1 a 5)")
Leia(turma)
escolha turma
caso 1
turm1
caso 2
turm2
caso 3
turm3
caso 4
turm4
caso 5
turm5
fimescolha
Senao
Escreval ("Aluno não encontrado na turma", Turma)
fimse
fim
Caso 5
l <- 1
Enquanto (l < 40) e (turma5[l] <> coda) faca
l <- l+1
Fimenquanto
se (Turma5[l] = coda) entao
Turma5[l] <- 0
Escreval ("Aluno removido da turma", turma)
Escreval ("Em qual turma deseja Recolocar o Aluno?(1 a 5)")
Leia(turma)
escolha turma
caso 1
turm1
caso 2
turm2
caso 3
turm3
caso 4
turm4
caso 5
turm5
fimescolha
Senao
Escreval ("Aluno não encontrado na turma", Turma)
fimse
fim
fimescolha
//opçao 3
caso 3
limpatela
codp<-tocodp + 1
tocodp<-tocodp+1
escreval ("Digite o nome do profissional:")
leia(REGPV[codp].NOMEP)
escreval ("Digite o cpf do profissional:")
leia(REGPV[codp].CPFP)
escreval ("Insira o Endereço:")
leia(REGPV[codp].enderecop)
escreval ("Insira um telefone para contato:")
leia(REGPV[codp].telefonep)
escreval ("Insira um Email para contato:")
leia(REGPV[codp].emailp)
REGPV[codp].ativop <- verdadeiro
loop2<-1
enquanto loop2=1 faca
ESCREVAL ("Esse profissional é um professor?(sim)(nao)")
leia (resp)
se (resp="nao") entao
loop2<-0
fimse
se (resp="sim") entao
erro<-1
enquanto erro=1 faca
escreval ("Em qual turma esse professor vai atuar?(1 a 5)")
leia(resp2)
se (resp2 > 5) ou (resp2 < 1) entao
erro<-1
senao
erro<-0
fimse
fimenquanto
escolha (resp2)
caso 1
se (turma1[41] = 0) entao
turma1[41]<- codp
escreval ("Cadastrado na turma.")
loop2<-0
senao
escreval ("Essa turma ja tem um professor.(voce esta sem turma)")
fimse
caso 2
se (turma2[41] = 0) entao
turma2[41]<- codp
escreval ("Cadastrado na turma.")
loop2<-0
senao
escreval ("Essa turma ja tem um professor.(voce esta sem turma)")
fimse
caso 3
se (turma3[41] = 0) entao
turma3[41]<- codp
escreval ("Cadastrado na turma.")
loop2<-0
senao
escreval ("Essa turma ja tem um professor.(voce esta sem turma)")
fimse
caso 4
se (turma4[41] = 0) entao
turma4[41]<- codp
escreval ("Cadastrado na turma.")
loop2<-0
senao
escreval ("Essa turma ja tem um professor tente outra.")
fimse
caso 5
se (turma5[41] = 0) entao
turma5[41]<- codp
escreval ("Cadastrado na turma.")
loop2<-0
senao
escreval ("Essa turma ja tem um professor.(voce esta sem turma)")
fimse
fimescolha
fimse
fimenquanto
escreval ("Cadastro realizado com sucesso")
escreval ("Seu codigo de professor é:CP",codp)
escreval ("Nao se esqueça dele, ele é muito importante.")
fim
//opção 4
caso 4
limpatela
escreva ("Digite o código do profissional:CP")
leia (codp)
se REGPV[codp].ativop = falso entao
escreval ("Profissional inativo")
senao
escreval ("Profissional ativo")
fimse
fim

//opçao 5
caso 5
limpatela
escreva ("Digite o código do profissional:CP")
leia (codp)
REGPV[codp].ativop <- falso
escreval ("Funcionário desligado com sucesso!")
fim

//opcao 6
caso 6
limpatela
escreva("Insira o codigo de aluno que deseja matricular:CA ")
leia(coda)
REGAV[coda].ps <- 1
escreval("Digite a data do processo seletivo:")
leia(REGAV[coda].dataps)
escreval("Agora ",REGAV[coda].nome," esta matriculado para o processo seletivo.")
fim
//opçao 7
caso 7
limpatela
escreva("Digite o codigo do aluno:CA")
leia(coda)
erro<-1
enquanto erro=1 faca
escreval("Digite a nota tirada pelo aluno(0 ate 100):")
leia(resp1)
se (resp1 < 0) ou (resp1 > 100) entao
erro<-1
senao
erro<-0
fimse
fimenquanto
REGAV[coda].notaps<-resp1
escreval("Nota lançada com sucesso!!")
fim
//opçao 8
caso 8
limpatela
escreva("Digite o CA do aluno para consulta:CA")
leia(coda)
se (REGAV[coda].ps = 1) entao
escreval("A nota do(a) ",REGAV[coda].nome," no processo seletivo é:",REGAV[coda].notaps," pontos de 100")
escreval("prova realizada em: ",REGAV[coda].dataps)
senao
escreval("Aluno nao cadastrado no processo seletivo.")
fimse
fim
//opcao 9
caso 9
limpatela
Escreval("Digite a turma que deseja buscar: ")
erro<-1
enquanto (erro=1) faca
Escreval("(Turmas de 1 a 5)")
leia(resp1)
se (resp1 < 1) ou (resp1 > 5) entao
erro<-1
senao
erro<-0
fimse
fimenquanto
pesq<-resp1
escolha (pesq)
//Pesquisar turma 1
            caso 1
Escreval("Estão na turma 1 os seguintes alunos: ")
para i de 1 ate 40 faca
se turma1[i] > 0 entao
   escreval(turma1[i]," - ",REGAV[turma1[i]].NOME)
fimse
fimpara
fim
//Pesquisar turma 2
            caso 2
Escreval("Estão na turma 2 os seguintes alunos: ")
para i de 1 ate 40 faca
se turma2[i] > 0 entao
   escreval(turma2[i]," - ",REGAV[turma2[i]].NOME)
fimse
fimpara
fim
//Pesquisa turma 3
           caso 3
Escreval("Estão na turma 3 os seguintes alunos: ")
para i de 1 ate 40 faca
se turma3[i] > 0 entao
   escreval(turma3[i]," - ",REGAV[turma3[i]].NOME)
fimse
fimpara
fim
//Pesquisa turma 4
           caso 4
Escreval("Estão na turma 4 os seguintes alunos: ")
para i de 1 ate 40 faca
se turma1[i] > 0 entao
   escreval(turma4[i]," - ",REGAV[turma4[i]].NOME)
fimse
fimpara
fim
//Pesquisa turma 5
           caso 5
Escreval("Estão na turma 5 os seguintes alunos: ")
para i de 1 ate 40 faca
se turma5[i] > 0 entao
   escreval(turma5[i]," - ",REGAV[turma5[i]].NOME)
fimse
fimpara
fim
fimescolha
//opcao 10
caso 10
Limpatela
escreval ("CA   Nome do Aluno")
Para i de 1 ate tocoda faca
escreval (i, " - ", REGAV[i].Nome)
fimpara
fim
//opcao 11
caso 11
limpatela
Escreval("Os funcionarios ativos são os seguintes : ")
para i de 1 ate tocodp faca
se REGPV[i].ativop = verdadeiro entao
   escreval( i ," - ",REGPV[i].NOMEP)
fimse
fimpara
fim
//opcao 12
caso 12
limpatela
escreval ("Os alunos cadastrados no processo seletivo sao:")
escreval ("CA - Nome:           Data da prova:")
para i de 1 ate tocoda faca
se REGAV[i].ps = 1 entao
escreval (i," - ",REGAV[i].nome,"         ",REGAV[i].dataps)
fimse
fimpara
fim
//opçao 13
caso 13
limpatela
Escreva("Digite o código do aluno que você deseja consultar: CA ")
 leia(coda)
 //1ºBimestre
 Escreval("As notas do ", REGAV[coda].Nome, "são: ")
 Escreval ("A nota do processo seletivo é ",REGAV[coda].notaps)
 escreval( " " )
 Escreval ("A nota do 1º bimestre é ",REGAV[coda].Nota1," pts")
 escreval( " " )
 Escreval ("A nota do 2º bimestre é ",REGAV[coda].Nota2," pts")
 escreval( " " )
 Escreval ("A nota do 3º bimestre é ",REGAV[coda].Nota3," pts")
 escreval( " " )
 Escreval ("A nota do 4º bimestre é ",REGAV[coda].Nota4," pts")
 escreval("Media Bimestral:", (REGAV[coda].nota1 + REGAV[coda].nota2 + REGAV[coda].nota3 + REGAV[coda].nota4 ) /4 )
 fim

//opcao 14
caso 14
limpatela
erro<-1
enquanto erro=1 faca
escreval ("Digite o código da turma: (De 1 a 5)")
leia(resp1)
se (resp1>5) ou (resp1<1) entao
escreval("Turma inserida de maneira incorreta,verifique os criterios.")
erro<-1
senao
erro<-0
fimse
fimenquanto
     turma<-resp1

     Escolha turma

     caso 1
     escreval("Notas dos alunos na turma 1:")
          para i de 1 ate 40 faca
          se (turma1[i] <> 0) entao
              Escreval("Nome: ",REGAV[turma1[i]].nome)
              Escreval("1º Bimestre: ",REGAV[turma1[i]].nota1)
              Escreval("2º Bimestre: ",REGAV[turma1[i]].nota2)
              Escreval("3º Bimestre: ",REGAV[turma1[i]].nota3)
              Escreval("4º Bimestre: ",REGAV[turma1[i]].nota4)
              escreval("")
              fimse
          fimpara
     caso 2
     escreval("Notas dos alunos na turma 2:")
      para i de 1 ate 40 faca
          se (turma2[i] <> 0) entao
              Escreval("Nome: ",REGAV[turma2[i]].nome)
              Escreval("1º Bimestre: ",REGAV[turma2[i]].nota1)
              Escreval("2º Bimestre: ",REGAV[turma2[i]].nota2)
              Escreval("3º Bimestre: ",REGAV[turma2[i]].nota3)
              Escreval("4º Bimestre: ",REGAV[turma2[i]].nota4)
              escreval("")
              fimse
          fimpara

     caso 3
     escreval("Notas dos alunos na turma 3:")
     para i de 1 ate 40 faca
          se (turma3[i] <> 0) entao
              Escreval("Nome: ",REGAV[turma3[i]].nome)
              Escreval("1º Bimestre: ",REGAV[turma3[i]].nota1)
              Escreval("2º Bimestre: ",REGAV[turma3[i]].nota2)
              Escreval("3º Bimestre: ",REGAV[turma3[i]].nota3)
              Escreval("4º Bimestre: ",REGAV[turma3[i]].nota4)
              escreval("")
              fimse
          fimpara

     caso 4
     escreval("Notas dos alunos na turma 4:")
          para i de 1 ate 40 faca
          se (turma4[i] <> 0) entao
              Escreval("Nome: ",REGAV[turma4[i]].nome)
              Escreval("1º Bimestre: ",REGAV[turma4[i]].nota1)
              Escreval("2º Bimestre: ",REGAV[turma4[i]].nota2)
              Escreval("3º Bimestre: ",REGAV[turma4[i]].nota3)
              Escreval("4º Bimestre: ",REGAV[turma4[i]].nota4)
              escreval("")
              fimse
          fimpara

     caso 5
     escreval("Notas dos alunos na turma 5:")
         para i de 1 ate 40 faca
          se (turma5[i] <> 0) entao
              Escreval("Nome: ",REGAV[turma5[i]].nome)
              Escreval("1º Bimestre: ",REGAV[turma5[i]].nota1)
              Escreval("2º Bimestre: ",REGAV[turma5[i]].nota2)
              Escreval("3º Bimestre: ",REGAV[turma5[i]].nota3)
              Escreval("4º Bimestre: ",REGAV[turma5[i]].nota4)
              escreval("")
              fimse
          fimpara

     FimEscolha
fim


//opcao 15
caso 15
limpatela
Escreva("Digite o código do aluno: CA")
     leia(coda)
     erro<-1
     enquanto erro=1 faca
     Escreval("Digite a nota do 1° bimestre: (De 1 a 25)")
     leia(resp1)
     se (resp1>25) ou (resp1<1) entao
     erro<-1
     escreval("Nota inserida de maneira incorreta,verifique os criterios.")
     senao
     erro<-0
     fimse
     fimenquanto
      REGAV[coda].nota1<-resp1
     erro<-1
     enquanto erro=1 faca
     Escreval("Digite a nota do 2° bimestre: (De 1 a 25)")
     leia(resp1)
     se (resp1>25) ou (resp1<1) entao
     erro<-1
     escreval("Nota inserida de maneira incorreta,verifique os criterios.")
     senao
     erro<-0
     fimse
     fimenquanto
     REGAV[coda].nota2<-resp1
     erro<-1
     enquanto erro=1 faca
     Escreval("Digite a nota do 3° bimestre: (De 1 a 25)")
      leia(resp1)
     se (resp1>25) ou (resp1<1) entao
     erro<-1
     escreval("Nota inserida de maneira incorreta,verifique os criterios.")
     senao
     erro<-0
     fimse
     fimenquanto
      REGAV[coda].nota3<-resp1
      erro<-1
     enquanto erro=1 faca
     Escreval("Digite a nota do 4° bimestre: (De 1 a 25)")
     leia(resp1)
     se (resp1>25) ou (resp1<1) entao
     erro<-1
     escreval("Nota inserida de maneira incorreta,verifique os criterios.")
     senao
     erro<-0
     fimse
     fimenquanto
      REGAV[coda].nota4<-resp1
     fim

//opcao 16
caso 16
 limpatela
Escreva("Digite o código do aluno que você deseja consultar: CA ")
 leia(coda)
 //1ºBimestre
 Escreval("As notas do ", REGAV[coda].Nome, " são: ")
 Escreval ("A nota do 1º bimestre é: ",REGAV[coda].Nota1)
 //2ºBimestre
 escreval("")
 Escreval ("A nota do 2º bimestre é: ",REGAV[coda].Nota2)
 //3ºBimestre
 escreval("")
 Escreval ("A nota do 3º bimestre é: ",REGAV[coda].Nota3)
 //1ºBimestre
 escreval("")
 Escreval ("A nota do 4º bimestre é: ",REGAV[coda].Nota4)
 escreval("")
 fim
//opcao 17
caso 17
limpatela
escreva ("Digite o código do aluno:CA")
leia (coda)
escreval("")
se (REGAV[coda].nota1 + REGAV[coda].nota2 + REGAV[coda].nota3 + REGAV[coda].nota4  > 60) entao
escreval ("Aluno aprovado!")
senao
escreval ("Aluno reprovado!")
fimse
escreval("")
escreval ("-Notas 1º bimestre:",REGAV[coda].nota1," pts-              ","-Notas 2º bimestre:",REGAV[coda].nota2," pts-")
escreval ("-Notas 3º bimestre:",REGAV[coda].nota3," pts-              ","-Notas 3º bimestre:",REGAV[coda].nota4," pts-")
fim
fimescolha
fimescolha
fimenquanto
Fimalgoritmo