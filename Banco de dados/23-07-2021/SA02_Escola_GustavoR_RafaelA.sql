create database escola;

use escola;

create table turmas(
	cod_curso int(5) not null auto_increment,
    curso varchar(10) not null,
    turno varchar(10),
    carga_horaria varchar(15),
    data_inicio date,
    data_termino date,
    cod_instrutor int(5),
    observacoes varchar(50),
    primary key(cod_curso),
    foreign key (cod_instrutor) references instrutor (cod_instrutor1)
) default charset = utf8;

create table alunos (
	cod_aluno int(5) auto_increment,
	nome_aluno varchar(20),
	endereço varchar(4),
    telefone varchar(15),
    cod_curso1 int(05),
    observacoes varchar(50),
    primary key(cod_aluno),
	foreign key (cod_curso1) references turmas (cod_curso)
);

create table instrutor (
	cod_instrutor1 int(5) auto_increment,
    nome_instrutor varchar(20),
    curso varchar(10),
    observacoes varchar(50),
    primary key(cod_instrutor1)
);

select * from turmas;
select * from alunos;
select * from instrutor;


insert into turmas values
(default,'TI','manhã','1600','2019-01-01','2020-01-01','1',null),
(default,'TI','tarde','1600','2019-01-01','2020-01-01','2',null),
(default,'TI','noite','1600','2019-01-01','2020-01-01','3',null),
(default,'Culinaria','tarde','600','2019-01-01','2019-06-01','4',null),
(default,'Sapateado','noite','300','2019-01-01','2019-04-01','5',null);

insert into alunos values
(default,'Gustavo','Rua 1','40028922','1',null),
(default,'Rafael','Rua 7','70707070','2',null),
(default,'Pedro','Rua 23','54315478','3',null),
(default,'Luiz','Rua 12','84651236','4',null),
(default,'Bruno','Rua 21','56565656','5',null),
(default,'Ana','Rua 4','48591256','1',null),
(default,'Diogo','Rua 24','23633551','2',null),
(default,'Laura','Rua 43','48566923','3',null);

insert into instrutor values
(default,'Claudin',null),
(default,'Buchecha',null),
(default,'Kami',null),
(default,'Girafales',null),
(default,'Rubão',null);

-- Consultar quais são os alunos de uma determinada turma e qual o instrutor
select nome_aluno,cod_curso,nome_instrutor
from alunos inner join turmas on cod_curso1 = cod_curso 
inner join instrutor on cod_instrutor1 = cod_instrutor where cod_curso = 2 ;

-- Consultar um aluno e mostrar qual é sua turma e qual instrutor da turma
select nome_aluno,cod_curso,curso,turno,nome_instrutor
from alunos inner join turmas on cod_curso1 = cod_curso 
inner join instrutor on cod_instrutor1 = cod_instrutor where cod_aluno = 4;

# Realizar outros testes de consultas

-- Consultar todos os alunos que estudam de noite
select nome_aluno,curso,turno
from alunos inner join turmas on cod_curso1 = cod_curso 
inner join instrutor on cod_instrutor1 = cod_instrutor where turno = 'noite' order by nome_aluno ;

-- Consultar todos os aludos do professor Claudin
select nome_aluno,curso,nome_instrutor
from alunos inner join turmas on cod_curso1 = cod_curso 
inner join instrutor on cod_instrutor1 = cod_instrutor where nome_instrutor = 'Claudin' order by nome_aluno;

-- view
create view todosDados as
select nome_aluno,cod_curso,curso,turno,nome_instrutor
from alunos inner join turmas on cod_curso1 = cod_curso 
inner join instrutor on cod_instrutor1 = cod_instrutor order by nome_aluno;

select * from todosDados;





