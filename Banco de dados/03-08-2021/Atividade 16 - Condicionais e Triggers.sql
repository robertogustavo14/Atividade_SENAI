create database alunos;
use alunos;
create table notas(
id_aluno int(4) primary key auto_increment,
nome_aluno varchar (45),
nota int(2),
situacao enum('APROVADO','REPROVADO')
);

insert into notas values 
(default,'Pedro',7,null),
(default,'Joao',6,null),
(default,'thiago',8,null),
(default,'pablo',4,null)
;
select * from notas;

delimiter //
create function fim_ano(id int(2)) 
returns enum('APROVADO','REPROVADO','NA MEDIA')
begin 
declare notaa dec(4,2);
declare resultado enum('APROVADO','REPROVADO','NA MEDIA');
select nota from notas where id_aluno = id into notaa;
if notaa > 6 then 
set resultado = 'APROVADO';
elseif notaa = 6 then
set resultado = 'NA MEDIA';
else 
set resultado = 'REPROVADO';
end if;
return resultado;
end//
delimiter ;

select fim_ano(4);

delimiter //
create function fim_ano1(id int(2)) 
returns enum('APROVADO','REPROVADO','NA MEDIA')
begin 
declare notaa dec(4,2);
declare resultado enum('APROVADO','REPROVADO','NA MEDIA');
select nota from notas where id_aluno = id into notaa;
case
when notaa > 6 then 
set resultado = 'APROVADO';
when notaa = 6 then
set resultado = 'NA MEDIA';
else 
set resultado = 'REPROVADO';
end case;
return resultado;
end//
delimiter ;

select fim_ano1(1);

