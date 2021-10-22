
use db_rh;
Create table tb_funcionarios (
id bigint (5) auto_increment,
nome varchar(20) not null,
idade bigint (2),
cargo varchar(20) not null,
salario bigint (5) ,

primary key(id)
);

select * from tb_funcionarios;

insert into tb_funcionarios (nome, idade, cargo, salario) values ("Kevin", 21, "Desenvolvedor", 3500);
insert into tb_funcionarios (nome, idade, cargo, salario) values ("Yasmim", 20, "Desenvolvedora", 5500);
insert into tb_funcionarios (nome, idade, cargo, salario) values ("Ayla", 19, "Faxineira", 1500);
insert into tb_funcionarios (nome, idade, cargo, salario) values ("Jessica", 30, "Bancaria", 3500);
insert into tb_funcionarios (nome, idade, cargo, salario) values ("Eduardo", 18, "Lider", 6500);

select nome, salario from tb_funcionarios where salario > 2000;

select nome, salario from tb_funcionarios where salario <2000;

update tb_funcionarios set salario = 3000 where id = 1;

SET SQL_SAFE_UPDATES = 0;