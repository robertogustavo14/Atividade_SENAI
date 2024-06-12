algoritmo "semnome"
// Função :
// Autor :
// Data : 13/11/2020
// Seção de Declarações 
var
//MENU
resp_menu: inteiro
resp_mat: caractere

//VARIÁVEIS PROCESSO SELETIVO
vNome: vetor [1..9] de caractere //variável para nome dos candidatos
a: inteiro //índice nome candidatos
vData_nasc: vetor [1..9] de caractere //variável para data nascimento
b: inteiro //índice data nascimento
vIdentidade: vetor [1..9] de inteiro //variável para identidade
c: inteiro //índice identidade
vData_prova: vetor [1..3] de caractere //variável para data da prova
d: inteiro //variável para data da prova
vCurso: vetor [1..3] de caractere // variável para curso desejado
f: inteiro

//MATRÍCULA DE 3 ALUNOS PARA CURSO DE DIREITO
vAluno_direito: vetor [1..3] de caractere //variável para escrever o nome compelto do aluno do curso de direito
g: inteiro //índice para variável vAluno_direito
vCod_mat_direito: vetor [1..3] de inteiro //variável para código das matrículas dos aprovados
h: inteiro //índice para código da matrícula
vEnde_aluno_direito: vetor [1..3] de caractere //variável para endereço
i: inteiro //índice para endereço
vBairro_aluno_direito: vetor [1..3] de caractere // variável para bairro dos aprovados
j: inteiro // índice para bairro
vCpf_aluno_direito: vetor [1..3] de inteiro //variável para CPF dos aprovados
k: inteiro //índice para CPF
vPai_aluno_direito: vetor [1..3] de caractere //variável para nome dos pais dos aprovados
l: inteiro //índice para nome pai
vMae_aluno_direito: vetor [1..3] de caractere //variável para nome das mães dos aprovados
m: inteiro //índice para nome mãe
vNasc_aluno_direito: vetor [1..3] de caractere //variável para data de nascimento aluno direito
n: inteiro //índice do vetor para data de nascimento
vCurso_aluno_direito: vetor [1..3] de caractere //variável para curso dos alunos de direito
o: inteiro //índice para vetor do curso

inicio
// Seção de Comandos
escreval ("     ___________________________________________________________________ ")
escreval ("    |                                                                   |")
escreval ("    |                                                                   |")
escreval ("    |                       • SEJA BEM-VINDO AO                         |")
escreval ("    |                   PROGRAMA DA ESCOLA FREEDOM •                    |")
escreval ("    |                                                                   |")
escreval ("    |___________________________________________________________________|")
escreval ("                                                                         ")
escreval ("     ___________________________________________________________________ ")
escreval ("    |                                                                   |")
escreval ("    |                                                                   |")
escreval ("    |                   | PROGRAMA - ESCOLA FREEDOM |                   |")
escreval ("    |                                                                   |")
escreval ("    |                             MENU:                                 |")
escreval ("    |                  1) CADASTRO PROCESSO SELETIVO                    |")
escreval ("    |                  2) MATRÍCULA DIREITO                             |")
escreval ("    |                  3) MATRÍCULA ARQUITETURA                         |")
escreval ("    |                  4) MATRÍCULA CINEMA                              |")
escreval ("    |                  5) CADASTRAMENTO TURMAS                          |")
escreval ("    |                  6) PROFESSORES                                   |")
escreval ("    |                  7) NOTAS DOS ALUNOS                              |")
escreval ("    |                  8) SAIR DO PROGRAMA                              |")
escreval ("    |                                                                   |")
escreval ("    |                                                                   |")
escreval ("    |___________________________________________________________________|")
escreval
escreval ("                                Vamos começar?                           ")
escreval ("                       DIGITE A OPÇÃO QUE VOCÊ DESEJA:                   ")
leia (resp_menu)
limpatela
//CADASTRO PROCESSO SELETIVO
se resp_menu = 1 entao
escreval ("     ______________________________________________________________________")
escreval ("    |                                                                     |")
escreval ("    |                                                                     |")
escreval ("    |                   • CADASTRO PROCESSO SELETIVO •                    |")
escreval ("    |                                                                     |")
escreval ("    |                                                                     |")
escreval ("    |_____________________________________________________________________|")
escreval ()
//nome candidatos
escreval ("----------------------------------------------------------------------------------")
escreval ("                              NOME DOS CANDIDATOS                          ")
escreval ()
para a de 1 ate 9 faca
escreval ("Digite o nome do candidato:")
leia (vNome[a])
fimpara
escreval ()
//data de nascimento
escreval ("----------------------------------------------------------------------------------")
escreval ("                        DATA DE NASCIMENTO DOS CANDIDATOS                  ")
escreval ()
para b de 1 ate 9 faca
escreval ("Digite a data de nascimento do candidato:")
leia(vData_nasc[b])
fimpara
escreval ()
//identidade
escreval ("----------------------------------------------------------------------------------")
escreval ("                         IDENTIDADE DOS CANDIDATOS                          ")
escreval ()
para c de 1 ate 9 faca
escreval ("Digite a identidade do candidado:")
leia (vIdentidade[c])
fimpara
escreval ()
//data para as 3 provas do processo seletivo
escreval ("----------------------------------------------------------------------------------")
escreval ("                            DATAS DAS PROVAS                               ")
escreval ()
escreval ("Data da prova de direito:")
leia (vData_prova[1])
escreval ("Data da prova de arquitetura:")
leia (vData_prova[2])
escreval ("Data da prova de cinema:")
leia (vData_prova[3])
escreval ()
//cursos
escreval ("----------------------------------------------------------------------------------")
escreval ("                      CURSOS DISPONÍVEIS NO PROCESSO SELETIVO               ")
escreval ()
escreval ("                                   DIREITO                                  ")
escreval ("                                 ARQUITETURA                                ")
escreval ("                                    CINEMA                                  ")
escreval ()
escreval ("----------------------------------------------------------------------------------")
escreval ("                       DESEJA FAZER MATRICULA PRA QUAL CURSO?                     ")
leia (resp_mat)
se resp_mat = "direito" entao
fimse
limpatela
escreval ("     ___________________________________________________________________ ")
escreval ("    |                                                                   |")
escreval ("    |                                                                   |")
escreval ("    |                       • MATRÍCULA DIREITO •                       |")
escreval ("    |                                                                   |")
escreval ("    |                                                                   |")
escreval ("    |___________________________________________________________________|")
escreval ("                                                                         ")
//nome alunos de direito
escreval ("                          NOME DOS ALUNOS DE DIREITO                     ")
para g de 1 ate 3 faca
escreval ("Escreve o nome completo do aluno:")
leia(vAluno_direito)
fimpara
//código matrícula para cada aluno
escreval ("----------------------------------------------------------------------------------")
escreval ("                         CÓDIGO MATRÍCULAS ALUNOS DE DIREITO                      ")
escreval ()
para h de 1 ate 3 faca
escreval ("Digite o código da matrícula:")
leia (vCod_mat_direito)
fimpara
escreva
fimse
fimse
se resp_menu = 8 entao
escreval ("   ______________________________________________________________________   ")
escreval
escreval ("                        VENHA CONHECER NOSSA ESCOLA!                        ")
escreval
escreval ("                            DIRETORA Laura Serva                            ")
escreval
escreval ("                               ESCOLA FREEDOM                               ")
escreval ("                                 29/10/2020                                 ")
escreval
escreval ("   _______________________________________________________________________  ")
fimse
fimalgoritmo
