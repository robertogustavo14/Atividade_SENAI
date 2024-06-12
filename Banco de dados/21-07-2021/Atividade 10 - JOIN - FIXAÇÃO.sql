create database joinn;
create table mae (
id_mae int(4),
nome_mae varchar(45),
primary key (id_mae)
)
;
create table filho
(id_filho int(4),
nome_filho varchar(45),
mae_id_mae int(4),
primary key (id_filho),
foreign key (mae_id_mae) references mae (id_mae) 
)
;

INSERT INTO mae (id_mae, nome_mae) VALUES ( 1, "Maria");
INSERT INTO mae (id_mae, nome_mae) VALUES ( 2, "Marly");
INSERT INTO mae (id_mae, nome_mae) VALUES ( 3, "Mariluce");
INSERT INTO mae (id_mae, nome_mae) VALUES ( 4, "Mariangela");

select * from mae;

INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 1, "pablo", 1);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 2, "socrates", 1);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 3, "pedro", 1);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 4, "joao", 1);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 5, "alessandro", 2);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 6, "pericles", 2);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 7, "pedrinho", 2);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 8, "flavinho", 2);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 9, "luciana", 2);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 10, "elias", 2);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES (11, "phonix", 3);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 12, "joaquim", 3);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 13, "eugenor", 3);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 14, "dalas", 3);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 15, "mauricio", 4);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 16, "flavio", 4);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 17, "pereira", 4);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 18, "juliana", 4);

select nome_mae, nome_filho from mae inner join filho on id_mae = mae_id_mae;

INSERT INTO mae (id_mae, nome_mae) VALUES ( 5, "Lucia");
INSERT INTO mae (id_mae, nome_mae) VALUES ( 6, "mariana");

INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 19, "herique", null);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 20, "enzo", null);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 21, "felipe", null);
INSERT INTO filho (id_filho, nome_filho, mae_id_mae) VALUES ( 22, "nicolas", null);

select nome_mae,nome_filho from mae left join filho on id_mae = mae_id_mae where mae_id_mae is null;
SELECT nome_mae, nome_filho FROM mae RIGHT JOIN filho ON id_mae = mae_id_mae;

select * from filho;
update filho set mae_id_mae = 6 where id_filho = 22;
