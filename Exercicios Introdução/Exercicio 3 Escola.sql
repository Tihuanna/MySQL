
create table tb_alunos (
-- Criando as tabelas
id bigint auto_increment,
nome varchar(25) not null,
sexo char,
idade int not null,
turma char not null,
nota decimal (6.2),

primary key(id)
);

-- Populando as tabelas

insert into tb_alunos(nome, sexo, idade, turma, nota) values ("Kevin", "M", 21,"A", 6.8);
insert into tb_alunos(nome, sexo, idade, turma, nota) values ("Maria", "F", 22,"A", 7.0);
insert into tb_alunos(nome, sexo, idade, turma, nota) values ("Lucas", "M", 20,"B", 6.4);
insert into tb_alunos(nome, sexo, idade, turma, nota) values ("Joao", "M", 19,"B", 6.2);
insert into tb_alunos(nome, sexo, idade, turma, nota) values ("Debora", "F", 21,"A", 8.8);
insert into tb_alunos(nome, sexo, idade, turma, nota) values ("Ayla", "F",19,"B", 4.8);
insert into tb_alunos(nome, sexo, idade, turma, nota) values ("Kleber", "M", 18,"A", 9.8);
insert into tb_alunos(nome, sexo, idade, turma, nota) values ("Thresh", "M", 21,"A", 10.00);

-- Visualizar os dados da tabela

select * from tb_alunos;

select *from tb_alunos where nota > 7;
select *from tb_alunos where nota < 7;

update tb_alunos set idade = 18 where id = 2;

select * from tb_alunos;