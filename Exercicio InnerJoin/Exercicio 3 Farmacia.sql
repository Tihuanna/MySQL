create database db_farmacia;

use db_farmacia;

create table tb_categoria
(
id bigint auto_increment,
descricao varchar(255) not null,

primary key (id)
);

insert into tb_categoria (descricao) values ("Higiene");
insert into tb_categoria (descricao) values ("Remédios");
insert into tb_categoria (descricao) values ("Kids");
insert into tb_categoria (descricao) values ("Diversos");
insert into tb_categoria (descricao) values ("Maquina de pokemon");

select * from tb_categoria;

create table tb_produtos 
(
id bigint auto_increment,
nome varchar(255) not null,
marca varchar(255) not null,
preco decimal (6,2) not null,
quantidade_estoque int,

categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produtos(nome,marca, preco, quantidade_estoque, categoria_id) values ("Bandeide","Johnson & Johnson",5.00,120,4);
insert into tb_produtos(nome,marca, preco, quantidade_estoque, categoria_id) values ("Shampoo","Pantene",20.99,80,1);
insert into tb_produtos(nome,marca, preco, quantidade_estoque, categoria_id) values ("Ibuprofeno","MadQuimica",13.00,50,2);
insert into tb_produtos(nome,marca, preco, quantidade_estoque, categoria_id) values ("Gillete","Gillete",35.00,20,1);
insert into tb_produtos(nome,marca, preco, quantidade_estoque, categoria_id) values ("Frauda","Pampers",38.00,50,3);
insert into tb_produtos(nome,marca, preco, quantidade_estoque, categoria_id) values ("Pomada","Johson & Johnson",15.00, 100,3);
insert into tb_produtos(nome,marca, preco, quantidade_estoque, categoria_id) values ("Moeda da maquina","nenhnuma",2.00,1,5);
insert into tb_produtos(nome,marca, preco, quantidade_estoque, categoria_id) values ("Dipirona","Generico",13.00,100,2);

select* from tb_produtos;

select * from tb_produtos where preco > 50.0;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%B%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id and tb_categoria.descricao = "Remédios";