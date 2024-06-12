create database sa04_supermercado;
use sa04_supermercado;

#Criação de tabelas
create table produto(
id_produto int(5) auto_increment,
nome_produto varchar(40),
codbarra_produto varchar(15),
fabricação_produto date,
validade_produto date,
qtd_estoque int(5),
valor_prod decimal,
primary key (id_produto)
);

create table funcionario(
id_func int(5) auto_increment,
nome_func varchar(50),
cargo varchar(15),
primary key (id_func)
);

create table fornecedor(
id_fornecedor int(5) auto_increment,
nome_forn varchar(40),
prod_fornecido int(5),
categ_forn varchar(20),
qtd_comprada int(5),
valor_negociado decimal,
prazo_pagamento date,
primary key (id_fornecedor),
foreign key (prod_fornecido) references produto(id_produto)
);

create table caixa(
id_caixa int(05) auto_increment,
dia date,
valor_entrada decimal,
hora_entrada time,
valor_saida decimal,
hora_saida time,
func_caixa int(05),
primary key (id_caixa),
foreign key (func_caixa) references funcionario (id_func)
);

create table venda(
id_venda int(5) auto_increment,
data_venda date,
nota_fiscal int(15),
caixa_venda int(05),
produtos_vend int(5),
qtd_venda int(3),
forma_pag varchar(30),
preço_venda decimal,
primary key (id_venda),
foreign key (produtos_vend) references produto(id_produto),
foreign key (caixa_venda) references caixa(id_caixa)
);


#Povoamento de tabelas
insert into produto values
(1,'Arroz',1054028165,'2020-11-30','2022-11-30',280,25.69),
(2,'Feijão',630676810,'2021-01-30','2022-01-30',352,41.09),
(3,'Desodorante',378226557,'2020-06-30','2023-07-05',223,8.49),
(4,'Oreo',424147958,'2021-05-30','2022-10-01',142,3.09),
(5,'Coca-Cola',495807058,'2020-12-05','2021-11-30',182,8.79);
 
 insert into funcionario values
(1,'Julia','Gerente'),
(2,'Arthur','Sub-Gerente'),
(3,'Kevin','Operador'),
(4,'Eduardo','Operador'),
(5,'Raissa','Operador');

insert into caixa values
(1,'2021-08-08',50.30,'08:00:00',238.25,'20:00:00',5),
(2,'2021-08-08',25.10,'08:00:00',305.50,'20:00:00',4),
(3,'2021-08-08',30.80,'08:00:00',250.50,'20:00:00',3);

insert into venda values
(1,'2020-11-30',123456789,1,4,2,'Dinheiro',6.18),
(2,'2020-11-30',123456789,2,3,1,'Cartão Crédito',8.49),
(3,'2020-11-30',123456789,2,4,3,'Cartão Débito',9.27),
(4,'2020-11-30',123456789,3,2,1,'Dinheiro',41.09),
(5,'2020-11-30',123456789,1,1,2,'Dinheiro',51.38);

insert into fornecedor values
(1,'Tio João',1,'Alimentação',200,4200.00,'2021-12-04'),
(2,'Kicaldo',2,'Alimentação',200,7200.00,'2021-10-30'),
(3,'Axe',3,'Perfumaria',200,1300.00,'2021-11-25'),
(4,'Mondelez',4,'Alimentação',350,1000.00,'2021-11-05'),
(5,'Coca-Cola',5,'Alimentação',400,3000.00,'2021-12-01');

#Criação de Usuarios e permissões
create user 'Gerente'@'localhost' identified by '123';
grant all on sa04_supermercado.* to 'Gerente';

create user 'Sub-Gerente'@'localhost' identified by '123';
grant insert, select on sa04_supermercado.fornecedor to 'Sub-Gerente';
grant insert, select on sa04_supermercado.produto to 'Sub-Gerente';

create user 'Operador'@'localhost' identified by '123';
grant insert, select on sa04_supermercado.caixa to 'Operador';
grant insert, select on sa04_supermercado.venda to 'Operador';


#drops de usuarios
/*
drop user 'Gerente'@'localhost';
drop user 'Sub-Gerente'@'localhost';
drop user 'Operador'@'localhost';
*/

#Relatorio de controle de estoque
create view relatorio_estoque as
select id_produto,nome_produto,qtd_estoque,validade_produto
from produto order by qtd_estoque;

select * from relatorio_estoque;

#Entrada de caixa
create procedure horario_de_entrada_caixa()
select id_caixa, hora_entrada, valor_entrada from caixa;

call horario_de_entrada_caixa();

#Sangria
create procedure Sangria() update caixa set valor_saida = 0 where valor_saida >= 300;
call Sangria();

select * from caixa;

#Controle de estoque

Delimiter %
create trigger tgr_controle_estoque after insert
on venda
for each row
	begin
	update produto set qtd_estoque = qtd_estoque - new.qtd_venda
    where id_produto = new.produtos_vend;
end%
Delimiter ; 
 
-- teste de venda
insert into venda values
(6,'2020-11-30',123456789,1,4,2,'Dinheiro',6.18);