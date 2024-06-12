-- 1) Crie um banco de dados chamado SeuNomeSuaTurma.
create database GustavoTII2002T_03;

-- 2) Use esse Banco de dados.
use GustavoTII2002T_03;

-- 3) Crie as tabelas obedecendo o desenho acima, inclusive com as chaves primárias e estrangeiras.
create table produto (
cod_produto int(5) primary key auto_increment not null,
nome_produto varchar(45),
qtd int(10),
valor decimal(15)
);

create table vendedor (
registro int(5) primary key auto_increment not null,
nome varchar(45),
sexo enum('M','F')
);

create table vendas (
cod_venda int(5) primary key auto_increment not null,
data_venda date,
valor_venda decimal(15),
registro int(5),
foreign key vendas(registro) references vendedor(registro)
);

create table itens_de_venda (
cod_venda int(5) not null,
cod_produto int(5) not null,
qtd_item int(5),
valor_item decimal(15),
primary key (cod_venda,cod_produto),
foreign key itens_de_venda(cod_produto) references produto(cod_produto)
);

-- 5) Faça o povoamento do banco, conforme as informações das tabelas acima.
insert into produto values 
(10,'Mouse',100,10),
(11,'Office',30,790.50),
(12,'HD Externo',80,225.99),
(13,'Teclado',100,35.90)
;

insert into vendedor values 
(101,'Aldebaran Touro','M'),
(102,'Carina Dias','F'),
(103,'Paula Fernandes','F'),
(104,'Seya','M')
;

insert into vendas values
(1001,'2014-03-05','840.50',101),
(1002,'2014-03-06','235.99',102),
(1003,'2014-03-07','20.00',103)
;

insert into itens_de_venda values
(1001,11,1,790.50),
(1001,10,5,10.00),
(1002,12,1,225.99),
(1002,10,1,10.00),
(1003,10,2,10.00);

-- 6) Acrescentar na tabela vendedor uma coluna denominada loja varchar(50).
alter table vendedor add column loja varchar(50);

-- 7) Atribuir uma loja para cada funcionário cadastrado:
update vendedor set loja = 'centro' where registro = 101;
update vendedor set loja = 'Santo Antonio' where registro = 102;
update vendedor set loja = 'Cruzeiro' where registro = 103;

-- 8) Incluir um novo produto com cod_produto =14; nome=”Mouse sem Fio” e valor do produto=R$ 49
insert into produto values
(14,'Mouse sem Fio',0,49);

-- 9) Criar na tabela vendedor um atributo chamado email e faça o povoamento do mesmo seguindo a regra nome@praticabd.com.br; exemplo vendedor 102 ficaria carina@praticabd.com.br
alter table vendedor add column email varchar(100);
update vendedor set email = 'Aldebaran@praticabd.com.br' where registro = 101;
update vendedor set email = 'Carina@praticabd.com.br' where registro = 102;
update vendedor set email = 'Paula@praticabd.com.br' where registro = 103;
update vendedor set email = 'Seya@praticabd.com.br' where registro = 104;
select * from vendedor;

-- 10) Gerar uma tabela de preços, com código do produto, nome do produto e valor do mesmo.
create view Tabela_preco as 
select nome_produto,valor,cod_produto
from produto order by nome_produto;
select * from Tabela_preco;

-- 11) Aumentar em 10% todos os produtos de nossa empresa.
update produto set valor = valor +(valor* 0.1);

-- 12) Insira mais dois vendedores na tabela vendedor de sua livre escolha.
-- 13) Associe esses dois novos vendedores a loja centro.
insert into vendedor values 
(105,'Sheila santos','F','centro','Sheila@praticabd.com.br'),
(106,'Carlos santos','M','centro','Carlos@praticabd.com.br');

-- 14) Listar o nome e matricula de todos os vendedores que trabalham na loja centro.
select registro,nome from vendedor where loja = 'centro';

-- 15) Listar o nome e matricula de todos os vendedores ordenados alfabeticamente.
select nome,registro from vendedor order by nome;

-- 16) Listar o código, nome e quantidade de todos os produtos ordenados alfabeticamente.
select nome_produto,cod_produto,qtd from produto order by nome_produto,cod_produto;

-- 17) Listar todas as vendas ordenados pelo valor da venda de forma decrescente.
select * from vendas order by valor_venda desc;

-- 18) Listar o número de vendedores agrupados por sexo.
select registro from vendedor order by sexo;

-- 19) Qual o produto mais caro?
select * from produto where valor  = (select max(valor) from produto);

-- 20) Qual o produto mais barato?
select * from produto where valor  = (select min(valor) from produto);

-- 21) Qual a média de preços dos produtos?
select avg(valor) from produto;

-- 22) Qual a quantidade de produtos que temos cadastrados? – Total de registros na tabela de produtos.
select sum(valor) from produto;

-- 23) Quais os produtos possuem seu preço superior a média de preços de nossa base.
select * from produto where valor > (select avg(valor) from produto);

-- 24) Listar o nome dos produtos que nunca foram vendidos.
select * from itens_de_venda where qtd_item = 0;

-- 25) Listar o nome de todos os produtos que já foram vendidos.
select * from itens_de_venda where qtd_item > 0;

-- 26) Listar o nome de todos os vendedores que nunca realizam uma venda.
select vendas.registro from vendas 
inner join vendedor
on vendas.registro > 103;

-- 27) Atualizar o nome do produto de código 11 para Office 2013 e seu valor para 579.00
update produto set nome_produto = 'Office 2013', valor = 579 where cod_produto = 11;

-- 28) Listar o nome do produto mais caro.
select nome_produto from produto where valor  = (select max(valor) from produto);

-- 29) Listar o nome do produto mais barato.
select nome_produto from produto where valor  = (select min(valor) from produto);

-- 30) Listar o nome de todos os produtos que tenham seu preço inferior à média de preços.
select * from produto where valor < (select avg(valor) from produto);

-- 31) Listar o nome de todos os produtos que iniciam com a letra M.
select * from produto where nome_produto like 'M%';

-- 32) Listar o nome de todos os vendedores que tenha a palavra Dias em seu nome.
select * from vendedor where nome like '%Dias%';

-- 33) Exibir o total de venda da empresa.
select count(cod_venda) from vendas; 

-- 34) Exibir o total de vendas da empresa para o vendedor de matrícula 102.
select count(cod_venda) from vendas where registro = 102; 

-- 35) Exibir o total de vendas realizadas em um determinado período.
select count(cod_venda) from vendas where data_venda between date('2014-03-05') and date('2014-03-06');

-- 36) Exiba o total de vendas realizadas no dia 05 de março de 2014.
select sum(valor_venda) from vendas where data_venda = date('2014-03-05');

-- 37) Exiba os produtos vendidos no mês de março.
select * from vendas where data_venda between date('2014-03-01') and date('2014-03-31');

-- 38) Inserir uma nova venda com código 1004, valor total de 45.90 associada ao vendedor 101 no dia 10/05/2013.
insert into vendas values
(1004,'2013-05-10',45.90,101);

-- 39) Insira a venda feita pela vendedora Carina Dias de 01 teclado e 01 mouse. Observe que para fazer isso é necessário inserir registros nas tabelas vendas e item de venda, de modo que o valor da venda feche com o total de itens vendidos.
insert into vendas values
(1005,'2013-05-10',52,102);
insert into itens_de_venda values
(1005,10,1,12),
(1005,13,1,40);

-- 40) Listar o nome de todos os vendedores que realizaram alguma venda.

-- 41) Listar o nome de todos os vendedores do sexo masculino que tenha a palavra Dias em seu nome
select nome from vendedor where sexo = 'M' and nome like '%Dias%';

-- 42) Listar o nome de todos os produtos e a quantidade vendida para a venda de número 1001
select produto.nome_produto,qtd_item from produto 
inner join itens_de_venda
on produto.cod_produto = itens_de_venda.cod_produto and itens_de_venda.cod_venda = 1001;

-- 43) Listar o nome e quantidade de todos os produtos vendidos na venda de número 1003
select produto.nome_produto,qtd_item from produto 
inner join itens_de_venda
on produto.cod_produto = itens_de_venda.cod_produto and itens_de_venda.cod_venda = 1003;

-- 44) Listar o nome, matricula e sexo do vendedor responsável pela venda de número 1001
select nome,sexo from vendedor 
inner join vendas on vendas.cod_venda = 1001 and vendas.registro = vendedor.registro;

-- 45) Insira um produto da sua escolha . Invente todos os dados
insert into produto values 
(15,'Monitor',50,450);

-- 46) Insira um vendedor da sua escolha . Invente todos os dados
insert into vendedor values 
(107,'Mario Bros','M','Centro','Nintendo@gmail.com');

-- 47) Altere o nome do seu ultimo vendedor para Raimunda Souza, sexo feminino, email raiso@hotmail.com e loja cruzeiro
update vendedor set nome = 'Raimunda Souza',sexo = 'F', loja = 'Cruzeiro', email = 'raiso@hotmail.com' where registro = 107;

-- 48) Insira uma venda da sua escolha . Invente todos os dados
insert into vendas values
(1006,'2013-05-11',450,102);
insert into itens_de_venda values
(1006,15,2,900);

-- 49) Exclua a ultima venda cadastrada
delete from vendas where cod_venda = 1006;
delete from itens_de_venda where cod_venda = 1006;

-- 50) Insira seus dados como sendo um vendedor da loja Santo Antônio
insert into vendedor values 
(108,'Gustavo Roberto','M','Santo antonio','roberto@gmail.com');

-- 51) Busque o nome de todos os vendedores que comecem com a letra do seu nome.
select * from vendedor where nome like 'G%';

-- 52) Exiba na tela o nome de todos os vendedores que terminem com a primeira letra do seu nome
select * from vendedor where nome like '%G';

-- 53) Conte quantos vendedores do sexo masculino existem na base de dados
select count(sexo) from vendedor where sexo = 'M';

-- 54) Exiba a quantidade de vendedores tem na loja Santo Antônio
select count(loja) from vendedor where loja = 'Santo Antonio';

-- 55) Insira os dados de um amigo como sendo da loja Santo Antônio e repita a consulta da questão anterior para testar
insert into vendedor values 
(109,'Luiz gabriel','M','Santo antonio','Luiz@gmail.com');
select count(loja) from vendedor where loja = 'Santo Antonio';

-- 56) Altere a loja do seu amigo de Santo Antônio para Cruzeiro e repita a consulta da questão 54 para testar
update vendedor set loja = 'Cruzeiro' where registro = 109;
select count(loja) from vendedor where loja = 'Santo Antonio';

-- 57) Exiba na tela os nomes dos vendedores da loja Cruzeiro
select nome from vendedor  where loja = 'Cruzeiro';

-- 58) Insira um produto da sua escolha e invente
insert into vendas values
(1007,'2013-05-12',450,103);
insert into itens_de_venda values
(1007,15,1,450);

-- 59) Aumente em 50% o valor do produto cadastrado na questão 58
update vendas set valor_venda = valor_venda + (valor_venda*0.5) where cod_venda = 1007;
update itens_de_venda set valor_item = valor_item + (valor_item*0.5) where cod_venda = 1005;

-- 60) Exclua o produto cadastrado na questão 58
delete from vendas where cod_venda = 1007;
delete from itens_de_venda where cod_venda = 1007;

-- 61) Acrescente o campo nascimento na tabela vendedor para receber a data de nascimento dos vendedores.
alter table vendedor add nascimento date;

-- 63) Busque a data de nascimento do vendedor Aldebaran
select nascimento from vendedor where nome like 'Aldebaran%';

-- 64) Retorne a loja em que o vendedor Seiya trabalha
select loja from vendedor where nome like 'Seya%';

-- 65) Insira um produto qualquer. Invente os dados.
insert into vendas values
(1008,'2013-05-12',450,103);
insert into itens_de_venda values
(1008,15,1,450);

-- 66) Insira na tabela produto o pen drive 8GB, quantidade 30 valor 29.90
insert into produto values
(16,'Pen Drive 8GB',30,29.9);

-- 67) Diminua em 5% o valor do produto Pen drive 8 GB
update produto set valor = valor -(valor*0.05) where cod_produto = 16;

-- 68) Aumente em 25% o valor do produto que você inseriu na questão 65
update produto set valor = valor +(valor*0.25) where cod_produto = 16;

-- 69) Exiba na tela todos os produtos que tenham o número oito “8” no nome.
select * from produto where nome_produto like '%8%';

-- 70) Insira um produto qualquer. Invente os dados
insert into vendas values
(1009,'2013-05-13',300,102);
insert into itens_de_venda values
(1009,15,1,300);

-- 71) Insira um vendedor qualquer. Invente os dados
insert into vendedor values
(110,'Pedro Saya','M','Centro','Pedro@gmail.com','2000-01-02');

-- 72) Altere a loja do vendedor inserido na questão 71 para Cruzeiro.
update vendedor set loja = 'Cruzeiro' where registro = 110;

-- 73) Atualize a data de nascimento do vendedor inserido na questão 71 para 25 de dezembro de 1994
update vendedor set nascimento = '1994-12-25' where registro = 110;

-- 74) Exiba na tela a data de nascimento do vendedor Seiya
select nascimento from vendedor where nome like '%seya%';

-- 75) Exclua o produto inserido na questão 70.
delete from vendedor where registro = 110 limit 1;

-- 76) Efetue uma venda qualquer. Não se esqueça que para cada venda efetuada é necessário inserir registros na tabela item_de_venda

-- 77) Quantos produtos a empresa comercializa?
select count(cod_produto) from produto;

-- 78) Qual é o produto mais caro que a empresa comercializa?
select max(valor) from produto;

-- 79) Qual é o produto mais barato que a empresa comercializa?
select min(valor) from produto;

-- 80) Qual foi a maior venda feita pela empresa até agora?
select max(valor_venda) from vendas;
