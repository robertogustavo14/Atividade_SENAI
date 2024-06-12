create database PetShop
default character set utf8
default collate utf8_general_ci
;
show tables;
use PetShop;


create table cliente (
cod_cliente int not null auto_increment,
nome varchar(30) not null,
telefone varchar(15),
email varchar(30),
primary key (cod_cliente)
) default charset = utf8;
create table animal (
cod_animal int not null auto_increment,
nome varchar(30) not null,
dono varchar(30) not null,
especie varchar(15),
sexo enum('M' , 'F'),
nascimento date,
morte date,
primary key (cod_animal)
) default charset = utf8 ;


insert into cliente values
(default,'ana','789','ana@gmail.com'),
(default,'davi','790','davi@gmail.com'),
(default,'diogo','791',''),
(default,'eric','792',''),
(default,'Gabriel','793',''),
(default,'Gustavo','794',''),
(default,'Kayque','795',''),
(default,'Lucas','796',''),
(default,'Luiz','797',''),
(default,'Marcio','798',''),
(default,'Matheus','799',''),
(default,'Rafael','800','')
;

select * from cliente;

insert into animal values
(default,'venus','ana','Girafa','M','',''),
(default,'sky','davi','cao','F','',''),
(default,'Amora','Diogo','gato','F','',''),
(default,'','Eric','','','',''),
(default,'Chanel','Gabriel','Calopsita','F','',''),
(default,'','Gustavo','','','',''),
(default,'Princesa','Kayque','cao','F','',''),
(default,'','Lucas','','','',''),
(default,'Wesley','Luiz','cao','M','',''),
(default,'Luna','Marcio','cao','F','',''),
(default,'Kalifa','Matheus','cao','F','',''),
(default,'Lena','Rafael','Gato','F','','')
;

select * from animal;

alter table animal add quantidade_patas INT(2);
alter table animal add cor varchar(10) after especie;

describe animal;
describe cliente;

alter table animal change cor observacoes varchar(20);
alter table cliente change telefone contato varchar(20);

show tables;

rename table cliente to donos;

alter table animal drop quantidade_patas;









