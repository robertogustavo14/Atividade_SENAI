-- 6) Insira mais alguns registros
insert into filhos values
( 19,"Carlos Henrique",4), 
( 20,"Gabriel Assunção",2),
( 21,"Ivan Souza",1);
-- 7) Tente excluir um registro
delete from filhos where id_filho = 21;
-- 8) Tente atualizar um registro
update filhos set nome_filho = carlos where id_filho = 21;
-- 10) Na conexão com o usuário tente deletar um registro
delete from filhos where id_filho = 21;
