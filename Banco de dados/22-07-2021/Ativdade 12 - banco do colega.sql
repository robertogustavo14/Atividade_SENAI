create database db_archanjo;
use db_archanjo;

create table especie (
-- esp = especie
id_esp int(3) not null auto_increment, 
nome_cie varchar(45),
exp_vida int(3), -- expectativa de vida
primary key (id_esp)
);

create table habitos (
id_hab int(3),
alimentaçao varchar(10), -- herbivoro, carnivoro, onivoro
habitat varchar(30) -- Terrestre/Aquatico
);


create table animal (
id_animal int(4),
nome_animal varchar(45),
idade_animal int(3),
esp int(3),
hab int(3),
foreign key (esp) references especie (id_esp),
);


insert into especie values
(default,'Panthera leo','15'),
(default,'Selachimorpha','30'),
(default,'Hippopotamus amphibius','40'),
(default,'Lemuriformes','20'),
(default,'Panthera onca','15');

insert into habitos values
('1','Onivoro','Terrestre'),
('2','Carnivoro','Terrestre'),
('3','Carnivoro','Aquatico'),
('4','Herbivoro',null);

insert into animal values
('1','Onça-Pintada','6','5','2'),
('2','Lemure','9','4','1'),
('3','Tubarão','22','2','3'),
('4','Hipopotamo','28','3','4'),
('5','Leão','10','1','2');


-- 1) Identifique os animais aquaticos.
-- 2) Identifique os animais herbivoros.
-- 3) Identifique os animais com 10 anos ou mais.
-- 4) Na tabela de habitos insira um habitat para o hipopotamo.
-- 5) Altere a idade do Lemure.
-- 6) Identifique o animal mais velho.
-- 7) Identifique o animal mais novo.
-- 8) Qual a media de idade dos animais?
-- 9) Mostre a quantidade de animais cadastrados.
-- 10) Identifique o dados da onça.


-- 1
select * from animal where hab = '3';
-- 2
select * from animal where hab = '4';
-- 3
select * from animal where idade_animal between '10' and '100';
-- 4 
update habitos set habitat = 'Terrestre/Aquatico' where id_hab = '4';
-- 5
update animal set idade_animal = '5' where nome_animal = 'Lemure';
-- 6
select max(idade_animal) from animal;
-- 7
select min(idade_animal) from animal;
-- 8
select avg(idade_animal) from animal;
-- 9
select count(id_animal) from animal;
-- 10
select * from animal where id_animal = '1';