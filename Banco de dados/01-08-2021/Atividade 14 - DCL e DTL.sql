create database DETRAN;
use DETRAN;
create table condutores(
id_condutor int(4) primary key auto_increment not null,
nome_condutor varchar (60) not null,
cpf_condutor varchar(20),
endereco varchar(70),
placa varchar (8),
pontos int(2),
situacao varchar(20)
);
alter table condutores drop column placa;

create table veiculos(
id_veiculo int(4) auto_increment not null,
placa varchar (8) not null,
modelo varchar (60),
dono int(4),
primary key (id_veiculo,placa),
foreign key (dono) references condutores(id_condutor)
);

create table radares(
id_multa int(4) primary key auto_increment not null,
valor dec(5),
pontuacao int(2),
condutor int (4),
placa_veiculo varchar(8) not null,
foreign key (condutor) references condutores(id_condutor)
);

insert into condutores values
(default,'Gustavo',12345678911,'rua pequeno',7,'valida'),
(default,'Pedro',12355678911,'rua grande',22,'suspensa'),
(default,'antonio',12366678911,'rua dos pepinos',2,'valida')
;
insert into veiculos values
(default,'ABC123','Ford Ka',1),
(default,'BBC123','Saveiro',2),
(default,'CCC123','onix',3)
;
select * from radares;
insert into radares values
(default,95,5,3,'CCC123')
;

create user 'radar'@'localhost' identified by 'radar';
grant insert on *.* to 'radar'@'localhost';

create user 'condutor'@'localhost' identified by 'condutor';
grant select on *.* to 'condutor'@'localhost';

create user 'JURI'@'localhost' identified by 'juri';
grant select,update on *.* to 'JURI'@'localhost';
