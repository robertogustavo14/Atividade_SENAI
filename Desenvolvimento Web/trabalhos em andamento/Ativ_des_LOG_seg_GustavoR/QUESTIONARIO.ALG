Algoritmo "questionario"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   :  Claudio Iwakami
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Gustavo Roberto Da Silva
// Data atual  : 21/10/2020

Var
// Se��o de Declara��es das vari�veis 
resp:vetor [1..10] de inteiro
correta:vetor [1..10] de inteiro
pergunta:vetor [1..10] de caracter
respc:vetor [1..10] de caracter
soma,i:inteiro
gab:caracter
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval ("Questionario sobre seguran�a da informa��o.")
escreval ("Insira apenas o numero da questao correta.")
//questao 01
correta[1]<-0
escreval (" O que � a LGPD ?") //inserir a primeira pergunta
pergunta[1]<-" O que � a LGPD ?" //inserir a mesma pergunta
escreval("1-S�o conjuntos de comandos escritos e  jur�dicas para processo seletivo, armazenagem e processamento de dados.")
escreval("2-S�o conjuntos de regras jur�dicas para coleta, armazenagem e processamento de dados  pessoais. ")
escreval("3-S�o fun��es padr�es de regras regularizados para armazenamento, e processamento de dados. ")
escreval("4-S�o conjuntos de regras padr�es f�sicas para coleta de arquivos de impress�o.")
escreval("5-Conjuntos de padr�es Jur�dicas e f�sicas.")
leia(resp[1])
respc[1]<-"S�o conjuntos de regras jur�dicas para coleta, armazenagem e processamento de dados  pessoais. " //inserir a resposta correta por escrito
limpatela
se resp[1]=2 entao //x e a resposta certa em numero
correta[1]<-1
fimse
//questao 02
correta[2]<-0
escreval (" O que os governos, entidades estatais e empresas devem fazer para garantir a privacidade ?") //inserir a primeira pergunta
pergunta[2]<-" O que os governos, entidades estatais e empresas devem fazer para garantir a privacidade ?" //inserir a mesma pergunta
escreval("1-Seguran�a dos dados pessoais. ")
escreval("2-Adaptarem dados pessoais. ")
escreval("3-Aumentar os dados pessoais.")
escreval("4-Processamento de seguran�a.")
escreval("5-Processamento de garantia")
leia(resp[2])
respc[2]<-"Seguran�a dos dados pessoais. " //inserir a resposta correta por escrito
limpatela
se resp[2]=1 entao //x e a resposta certa em numero
correta[2]<-1
fimse
//questao 03
correta[3]<-0
escreval (" O que significa �consentimento� para a lei e o que tem a ver com seus direitos?") //inserir a primeira pergunta
pergunta[3]<-" O que significa �consentimento� para a lei e o que tem a ver com seus direitos?" //inserir a mesma pergunta
escreval("1-� a condi��o opera��es e tratamento.")
escreval("2-Tratamento dos dados de um conjunto.")
escreval("3-� a condi��o fundamental para a viabilidade das opera��es de tratamento dos dados de um indiv�duo.")
escreval("4-Tratamento dos dados de v�rios objetos individuais.")
escreval("5-Obter dados de objetos individuais.")
leia(resp[3])
respc[3]<-"� a condi��o fundamental para a viabilidade das opera��es de tratamento dos dados de um indiv�duo." //inserir a resposta correta por escrito
limpatela
se resp[3]=3 entao //x e a resposta certa em numero
correta[3]<-1
fimse
//questao 04
correta[4]<-0
escreval (" Como saber se seus dados pessoais est�o seguros? ") //inserir a primeira pergunta
pergunta[4]<-" Como saber se seus dados pessoais est�o seguros? " //inserir a mesma pergunta
escreval("1-Concorda com os termos de uso e pol�tica de privacidade.")
escreval("2-Concordar com termos jur�dicas.")
escreval("3-Concordar com termos f�sicos.")
escreval("4-Utilizar processo de anonimiza��o, e a pseudonimiza��o.")
escreval("5-Navega��o privada.")
leia(resp[4])
respc[4]<-"Utilizar processo de anonimiza��o, e a pseudonimiza��o." //inserir a resposta correta por escrito
limpatela
se resp[4]=4 entao //x e a resposta certa em numero
correta[4]<-1
fimse
//questao 05
correta[5]<-0
escreval (" Para que serve a Autoridade Nacional de Prote��o de Dados? ") //inserir a primeira pergunta
pergunta[5]<-" Para que serve a Autoridade Nacional de Prote��o de Dados? " //inserir a mesma pergunta
escreval("1-Elabora��o de diretrizes; fiscaliza��o e aplica��o de penalidades. ")
escreval("2-Elabora��o de cicatrizes jur�dicas.")
escreval("3-Elabora��o pessoal de dados.")
escreval("4-Elabora��o f�sica de dados.")
escreval("5-Colabora��o de dados.")
leia(resp[5])
respc[5]<-"Elabora��o de diretrizes; fiscaliza��o e aplica��o de penalidades. " //inserir a resposta correta por escrito
limpatela
se resp[5]=1 entao //x e a resposta certa em numero
correta[5]<-1
fimse
//questao 06
correta[6]<-0
escreval (" Em quais empresas a LGPD se aplica?") //inserir a primeira pergunta
pergunta[6]<-" Em quais empresas a LGPD se aplica?" //inserir a mesma pergunta
escreval("1-Apenas Tecnologia.")
escreval("2-Todos tipos de empresa que armazena dados pessoal.")
escreval("3-Apenas grandes empresas.")
escreval("4-Apenas o setor de agricultura.")
escreval("5-Apenas setor industrial.")
leia(resp[6])
respc[6]<-"Todos tipos de empresa que armazena dados pessoal." //inserir a resposta correta por escrito
limpatela
se resp[6]=2 entao //x e a resposta certa em numero
correta[6]<-1
fimse
//questao 07
correta[7]<-0
escreval (" A partir de qual data ser� obrigat�rio o cumprimento da lei?") //inserir a primeira pergunta
pergunta[7]<-" A partir de qual data ser� obrigat�rio o cumprimento da lei?" //inserir a mesma pergunta
escreval("1-2021 em agosto.")
escreval("2-2022 em setembro.")
escreval("3-2020 em agosto. ")
escreval("4-2019 em junho.")
escreval("5-2018 em novembro.")
leia(resp[7])
respc[7]<-"2020 em agosto. " //inserir a resposta correta por escrito
limpatela
se resp[7]=3 entao //x e a resposta certa em numero
correta[7]<-1
fimse
//questao 08
correta[8]<-0
escreval (" O que acontece se uma pessoa descumprir as leis?") //inserir a primeira pergunta
pergunta[8]<-" O que acontece se uma pessoa descumprir as leis?" //inserir a mesma pergunta
escreval("1-Multadas em 5% do seu faturamento ou R$100 milh�es por infra��o.")
escreval("2-Multadas em 10% do seu faturamento ou R$10 milh�es por infra��o.")
escreval("3-Multadas em 2% do seu faturamento ou R$50 milh�es por infra��o. ")
escreval("4-Multadas em 1% do seu faturamento ou R$10 milh�es por infra��o.")
escreval("5-Multadas em 0,5% do seu faturamento ou 500 mil por infra��o.")
leia(resp[8])
respc[8]<-"Multadas em 2% do seu faturamento ou R$50 milh�es por infra��o. " //inserir a resposta correta por escrito
limpatela
se resp[8]=3 entao //x e a r0esposta certa em numero
correta[8]<-1
fimse
//questao 09
correta[9]<-0
escreval (" Que tipo de dados s�o considerados pela LGPD?") //inserir a primeira pergunta
pergunta[9]<-" Que tipo de dados s�o considerados pela LGPD?" //inserir a mesma pergunta
escreval("1-Cartas de anime")
escreval("2-Crian�as.")
escreval("3-Adolescentes.")
escreval("4-Animais de estima��o.")
escreval("5-Nome, e-mail, CPF, telefone e endere�o, entre outros.")
leia(resp[9])
respc[9]<-"Nome, e-mail, CPF, telefone e endere�o, entre outros." //inserir a resposta correta por escrito
limpatela
se resp[9]=5 entao //x e a resposta certa em numero
correta[9]<-1
fimse
//questao 10
correta[10]<-0
escreval (" Por que a LGPD foi criada?") //inserir a primeira pergunta
pergunta[10]<-" Por que a LGPD foi criada?" //inserir a mesma pergunta
escreval("1-Para ganhar dinheiro em cima dos usu�rios.")
escreval("2-Para aumentar a economia do Pa�s.")
escreval("3-Para roubar dados dos usu�rios.")
escreval("4-Para proteger dados dos usu�rios. ")
escreval("5-Para vender dados entre usu�rios.")
leia(resp[10])
respc[10]<-"Para proteger dados dos usu�rios. " //inserir a resposta correta por escrito
limpatela
se resp[10]=4 entao //x e a resposta certa em numero
correta[10]<-1
fimse
i<-1
repita
soma<-soma+correta[i]
i<-i+1
ate i>10
se (soma=10) entao
escreval (" Voce tirou ",soma,", Meus parabens Voce brilhou!!! ")

escreval("___________________F___________________")
escreval("__________________FIC__________________")
escreval("_________________FICA _________________")
escreval("________________FICA TR________________")
escreval("_______________FICA TRAN_______________")
escreval("______________FICA TRANQU______________")
escreval("_____________FICA TRANQUIL_____________")
escreval("FICA TRANQUILO VAI DAR TUDO ERRADOFICA ")
escreval("_FICA TRANQUILO VAI DAR TUDO ERRADOFIC_")
escreval("___FICA TRANQUILO VAI DAR TUDO ERRAD___")
escreval("_____FICA TRANQUILO VAI DAR TUDO E_____")
escreval("_______FICA TRANQUILO VAI DAR TU_______")
escreval("_________FICA TRANQUILO VAI DA_________")
escreval("__________FICA TRANQUILO VAI __________")
escreval("_________FICA TRANQUILO VAI DA_________")
escreval("________FICA TRANQUILO VAI DAR ________")
escreval("_______FICA TRANQUI_FICA TRANQUI_______")
escreval("______FICA TRANQU_____FICA TRANQU______")
escreval("_____FICA TRAN___________FICA TRAN_____")
escreval("____FICA TR_________________FICA TR____")
escreval("___FICA T______________________FICA ___")
escreval("__FICA___________________________FICA__")
escreval("_FI_________________________________FI_")
escreval("")
fimse
se (soma<=9) e (soma>=7) entao
escreval("Voce tirou ",soma, ", bom conhecimento!!!")
fimse
se (soma<=6) e (soma>=5) entao
escreval("Voce tirou ",soma,", precisa estudar mais :(")
fimse
se (soma<5) entao
escreval ("Voce tirou ",soma,", fazer reciclagem")
fimse
escreval ("Deseja olhar o gabarito? (sim)(nao)")
leia(gab)
i<-1
se (gab="sim") entao
limpatela
repita
escreval ("-----------------------------------------------------------------------------------------------------------------------")
escreval ("Pergunta",i,": ",pergunta[i])
escreval ("Resposta correta: ",respc[i])
se (correta[i]=1) entao
escreval ("(Acertou!!)")
senao
escreval ("(Errou)")
fimse
i<-i+1
ate (i>10)
fimse
Fimalgoritmo