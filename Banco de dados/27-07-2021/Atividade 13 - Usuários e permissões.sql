-- 1) Crie um banco com uma tabela
create database Usuarios;
use usuarios;
create table filhos(
id_filho int(4),
nome_filho varchar(40),
mae_id_mae int(4)
);
-- 2) Faça o povoamento dessa tabela
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 1, "pablo", 1);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 2, "socrates", 1);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 3, "pedro", 1);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 4, "joao", 1);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 5, "alessandro", 2);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 6, "pericles", 2);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 7, "pedrinho", 2);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 8, "flavinho", 2);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 9, "luciana", 2);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 10, "elias", 2);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES (11, "phonix", 3);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 12, "joaquim", 3);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 13, "eugenor", 3);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 14, "dalas", 3);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 15, "mauricio", 4);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 16, "flavio", 4);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 17, "pereira", 4);
INSERT INTO filhos (id_filho, nome_filho, mae_id_mae) VALUES ( 18, "juliana", 4);
select * from filhos;
-- 3) Crie um usuário 
create user 'administrador'@'localhost' identified by '123';
-- 4) Dê permissão para INSERT
grant insert on filhos to 'administrador'@'localhost';
-- 9) Dê permissão de Delete para o usuário
grant delete,insert,select on filhos to 'administrador'@'localhost';
-- 12) Exiba os usuários do banco 
SELECT user, host FROM mysql.user;
-- 13) Exclua o usuário.
drop user 'administrador'@'localhost';


