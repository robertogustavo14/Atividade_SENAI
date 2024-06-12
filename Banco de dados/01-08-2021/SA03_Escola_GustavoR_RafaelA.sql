create database Serviços_Gerais_LTDA;
use Serviços_Gerais_LTDA;

create table if not exists funcionario(
id_func int(4) primary key auto_increment ,
nome_funcionario varchar(45),
cargo varchar(45),
carga_horaria time,
nivel_acesso varchar(60)
);

 create table if not exists ponto (
id_ponto int(4) auto_increment,
data_atual date default now() ,
id_funcionario int(4),
nome_funcionario varchar(45),
hr_entra_exigido time,
hr_saida_exigido time,
hr_entra_registrado time,
hr_saida_registrado time,
primary key(id_ponto,id_funcionario),
foreign key ponto(id_funcionario) references funcionario(id_func)
);

insert into funcionario values
(default,'Gustavo Roberto', 'Administrador database','6:00:00', 'Gerente'),
(default,'Raphael Algusto', 'Gerente de TI','10:00:00', 'Gerente'),
(default,'Gabriela Rocha', 'RH','19:00:00', 'Funcionario'),
(default,'Pablo firmino', 'tester','13:00:00', 'Funcionario'),
(default,'Marcos reis', 'desenvolvedor web','6:00:00', 'Funcionario'),
(default,'Bruno correia', 'FiveM Mecanico','10:00:00', 'Funcionario')
;

select * from funcionario;
select * from ponto;
insert into ponto values
(default,default,1,'Gustavo Roberto', '07:00:00','17:00:00', '06:50:00', '17:10:00'),
(default,default,2,'Raphael Algusto', '07:00:00','13:00:00', '06:20:00', '13:05:00'),
(default,default,3,'Gabriela Rocha', '13:00:00','19:00:00', '13:05:00', '19:00:00'),
(default,default,4,'Pablo firmino', '08:00:00','13:00:00', '07:50:00', '13:00:00'),
(default,default,5,'Marcos reis', '09:00:00','18:00:00', '09:50:00', '20:00:00'),
(default,default,6,'Bruno correia', '05:00:00','12:00:00', '04:00:00', '12:00:00')
;

CREATE USER 'Gustavo.R'@'localhost' IDENTIFIED BY '123';
grant all privileges on *.* to 'Gustavo.R'@'localhost';

CREATE USER 'Raphael.A'@'localhost' IDENTIFIED BY '123';
grant all privileges on *.* to 'Raphael.A'@'localhost';

CREATE USER 'Gabriela.R'@'localhost' IDENTIFIED BY '123';
grant select,insert,update on ponto to 'Gabriela.R'@'localhost';

CREATE USER 'Pablo.F'@'localhost' IDENTIFIED BY '123';
grant select,insert,update on ponto to 'Pablo.F'@'localhost';

CREATE USER 'Marcos.R'@'localhost' IDENTIFIED BY '123';
grant select,insert,update on ponto to 'Marcos.R'@'localhost';

CREATE USER 'Bruno.C'@'localhost' IDENTIFIED BY '123';
grant select,insert,update on ponto to 'Bruno.C'@'localhost';











