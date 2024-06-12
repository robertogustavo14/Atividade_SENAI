-- 1) Crie um banco com seu nome. Ex: db_rubem
create database db_gustavo;
use db_gustavo;
-- 2) Crie pelo menos 3 tabelas com no mínimo dois relacionamentos
create table cinema(
id_cinema int(4) primary key auto_increment,
nome_cinema varchar(15)
);

create table filmes(
id_filme int(4) primary key auto_increment,
nome_filme varchar(15),
nome_diretor varchar(45),
classificacao int (2),
repro_cinema int(4),
foreign key (repro_cinema) references cinema (id_cinema)
);

create table diretor(
id_diretor int(4) primary key auto_increment,
nome_diretor varchar(45),
diri_filme int(4),
foreign key (diri_filme) references filmes (id_filme)
);
select * from cinema;
select * from filme;
select * from diretor;

-- 3) Faça o povoamento das tabelas com no mínimo 5 tuplas por tabela. 

insert into cinema values
(default,'Bem na tela'),
(default,'Cinemark'),
(default,'Cineplex'),
(default,'Carmike'),
(default,'Flix Mix')
;
insert into filmes values 
(default,'O Poderoso Chefão','Francis Ford Coppola','18','4'),
(default,'O Rei Leão','Rob Minkoff','0','3'),
(default,'Forrest Gump - O Contador de Histórias','Robert Zemeckis','12','1'),
(default,'O Senhor dos Anéis - O Retorno do Rei','Peter Jackson','14','5'),
(default,'Vingadores: Ultimato','Anthony Russo','16','4')
;

insert into diretor values 
(default,'Francis Ford Coppola','1'),
(default,'Rob Minkoff','2'),
(default,'Robert Zemeckis','3'),
(default,'Peter Jackson','4'),
(default,'Anthony Russo','5')
;

-- 4) Elabore 10 necessidades que demandem INSERT, SELECT, UPDATE ou DELETE. 

-- insira um novo cinema
-- insira um novo filme
-- insira um novo diretor
-- selecione todos os diretores e seus nomes
-- selecione os filmes para maiores de 13 anos
-- selecione o filme com maior classificacao indicativa
-- atualize a classificaçao de um filme
-- atualize o nome da tabela filmes para filme
-- atualize um nome de um diretor
-- atualize o nome de um filme
-- ordene os filmes por classificacao

insert into cinema values
('1','cinepop');

insert into filmes values
(default,'A espera de um milagre','Frank Darabont','18','3');

insert into diretor values
(default,'Frank Darabont','6');

select nome_diretor from diretor;

select * from filme;
select * from filmes 
having (classificacao) > '13';

select nome_filme,max(classificacao) from filmes;

update filmes set classificacao = '16' where id_filme = 6;

rename table filmes to filme;

update diretor set nome_diretor = 'Anthony R' where id_diretor = '5';

update filme set nome_filme = 'The god father' where id_filme = '1';

select nome_filme,nome_diretor,classificacao from filme order by classificacao;

  

