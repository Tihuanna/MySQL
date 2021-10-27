create database db_curso;

use db_curso;

create table tb_categoria
(
id bigint auto_increment,
nome varchar(255) not null, 
descricao varchar(255) not null,

primary key (id)
);

insert into tb_categoria (nome,descricao) values ("React","Curso de React");

insert into tb_categoria (nome,descricao) values ("Java","Curso de Java");

insert into tb_categoria (nome,descricao) values ("Python","Curso de Pytom");

insert into tb_categoria (nome,descricao) values ("Angular","Curso de Angular");

insert into tb_categoria (nome,descricao) values ("C++","Curso de c++");

create table tb_curso 
(
id bigint auto_increment,
curso varchar (255) not null,
preco decimal(6,2) not null,
horas int not null,
categoria_id bigint,


primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (curso, preco, horas, categoria_id) values ("Java ", 100.99, 90, 2);

insert into tb_curso (curso, preco, horas, categoria_id) values ("React", 59.00, 12, 1);

insert into tb_curso (curso, preco, horas, categoria_id) values ("Angular", 35.00, 50, 4);

insert into tb_curso (curso, preco, horas, categoria_id) values ("C++", 159.90, 30,5);

insert into tb_curso (curso, preco, horas, categoria_id) values ("Python", 159.90, 50, 3);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where curso like "%j%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id and tb_categoria.descricao = "Java";