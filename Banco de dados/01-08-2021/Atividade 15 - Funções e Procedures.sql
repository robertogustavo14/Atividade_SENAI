create database funcao;
use funcao;
create function somar (n1 int ,n2 int)
returns int
return n1 + n2;

select somar(5, 4);

create procedure sub (n1 int,n2 int)

select concat('A subtração de ',n1,' com ',n2,' é ',n1-n2);

call sub (5,3);

create table statuss (
id int primary key,
nome varchar(30),
situacao boolean
);

select * from statuss;
insert into statuss values
(1,'gustavo',0);

DELIMITER //
create procedure vacinado (idm int,n1 boolean)
begin 
	update statuss 
    set situacao = n1 where id = idm;
end//
DELIMITER ;

call vacinado(1,1);
