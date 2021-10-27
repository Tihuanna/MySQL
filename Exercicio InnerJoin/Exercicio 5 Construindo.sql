create database db_construindo;

use db_construindo;

create table tb_categoria
(
id bigint auto_increment,
produto varchar(255) NOT NULL,


primary key (id)
);

insert into tb_categoria (produto) values ("Materiais");
insert into tb_categoria (produto) values ("Ferramentas");
insert into tb_categoria (produto) values ("Acessórios");
insert into tb_categoria (produto) values ("Utensilios");

select * from tb_categoria;

create table tb_produto
(
id bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco decimal (6,2) not null,
qtestoque int not null,
categoria_id bigint not null,

primary key(categoria_id),

foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome,descricao,preco,qtestoque) values ("Cimento","Cimento CP 35 kg",29.9,100,1);
insert into tb_produto (nome,descricao,preco,qtestoque) values ("Cal","Cal Hidratada 20kg",13.49,100,1);
insert into tb_produto (nome,descricao,preco,qtestoque) values ("Alicate","Alicate universal",76.9,10,2);
insert into tb_produto (nome,descricao,preco,qtestoque) values ("Multimetro","Multimetro digital",60.99,5,2);
insert into tb_produto (nome,descricao,preco,qtestoque) values ("Broca","Broca três pontas",6.60,1000,3);
insert into tb_produto (nome,descricao,preco,qtestoque) values ("Lubrificannte","Lubrificante WD-40",15,4);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where Produtos like "C%";

select tb_produto.Produto, tb_produto.valor, tb_categoria.Nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.Produto, tb_produto.valor, tb_categoria.Nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.Nome = "Ferramentas";