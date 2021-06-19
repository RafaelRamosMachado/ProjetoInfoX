use dbinfox;
describe tbusuarios;
select * from tbusuarios;
-- A linha abaixo adiciona um campo a tabela
alter table tbusuarios add column perfil varchar(20) not null;
-- A linha abaixo remove um campo de uma tabela
alter table tbusuarios drop column perfil;
update tbusuarios set perfil='admin' where iduser=2;
update tbusuarios set perfil='rafaramos' where iduser=1;
insert into tbusuarios(iduser,usuario,fone,login,senha,perfil)
values(3,'Bill Gates','9999-9999','bill','123','bill');
delete from tbusuarios where iduser=0;
update tbusuarios set perfil='user' where iduser=3;
update tbusuarios set perfil='admin' where iduser=1;
insert into tbusuarios(iduser,usuario,fone,login,senha,perfil)
values(4,'Administrador Dono Da Loja Muito Importante','7777-9999','dono','123','admin');
select * from tbusuarios;

select * from tbclientes;

select * from tbclientes where nomecli like 'jo%';

describe tbos;
select * from tbos;
-- A linha abaixo altera a tabela adicionando um campo em uma determinada posição
alter table tbos add tipo varchar(15) not null after data_os;
alter table tbos add situacao varchar(20) not null after tipo;

--  A instrução abaixo seleciona e ordena por nome todos os clientes cadastrados
select * from tbclientes order by nomecli;

-- O bloco de instruções abaixo faz a seleção e união de dados de duas tabelas
-- OSER é uma variável que contém os campos desejados da tabela OS
-- CLI é outra variável que contém os campos desejados da tabela clientes
select
OSER.os,data_os,tipo,situacao,equipamento,valor,
CLI.nomecli,fonecli
from tbos as OSER
inner join tbclientes as CLI
on (CLI.idcli = OSER.idcli);

