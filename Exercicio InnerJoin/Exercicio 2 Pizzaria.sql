create database db_pizzaria;
use db_pizzaria;

create table tb_categoria 
(

id bigint auto_increment,
tipo varchar(20) not null,
refrigerante varchar(20)not null,
borda boolean not null,

primary key(id)
);

insert into tb_categoria (tipo, refrigerante, borda) values ("Salgada", False, false);
insert into tb_categoria (tipo, refrigerante, borda )values ("Salgada", true, false);
insert into tb_categoria (tipo, refrigerante, borda) values ("Doce", true, True);
insert into tb_categoria (tipo, refrigerante, borda) values ("Doce", true, false);
insert into tb_categoria (tipo, refrigerante, borda) values ("Salgada", true, false);


use db_pizzaria; 
create table tb_pizza 
(
id bigint auto_increment,
nome varchar(20)not null,
descricao varchar(255) not null,
preco_g decimal (5,2) not null,
preco_m decimal (5,2) not null,
preco_br decimal (5,2) not null,
piz_id bigint,


primary key (id),
foreign key(piz_id) references tb_categoria (id)
);

insert into tb_pizza (nome, descricao, preco_g,preco_m,preco_br,piz_id) values ("Queijo", "Mussarela e tomate",35.00,30.00,25.00,1);

insert into tb_pizza (nome, descricao, preco_g,preco_m,preco_br,piz_id) values ("Carne", "Carne com cebola refogada", 35.00,30.00,25.00,1);

insert into tb_pizza (nome, descricao, preco_g,preco_m,preco_br,piz_id) values ("Calabresa","Calabresa com cebola moida", 38.00,33.00,28.00,1);

insert into tb_pizza (nome, descricao, preco_g,preco_m,preco_br,piz_id) values ("Peito de peru","Peito de peru com mussarela", 48.00,43.00,35.00,1);

insert into tb_pizza (nome, descricao, preco_g,preco_m,preco_br,piz_id) values ("Portuguesa","Presunto e queijo com ovo, milho e ervilha", 48.00,43.00,35.00,1);

insert into tb_pizza (nome, descricao, preco_g,preco_m,preco_br,piz_id) values ("Frango c/catupiry","Molho de tomate,frango e catupiry",38.00,35.00,32.00,1);

insert into tb_pizza (nome, descricao, preco_g,preco_m,preco_br,piz_id) values ("Chocolate","Chocolate com M&M",38.00,34.00,30.00,2);

insert into tb_pizza (nome, descricao, preco_g,preco_m,preco_br,piz_id) values ("Beijinho","Leite condensado com coco", 38.00,34.00,30.00,2);

select * from tb_pizza where preco_g>45.00 or preco_m>45.00 or preco_br>45.00 order by tb_pizza.piz_id;

select*from tb_pizza where preco_m between 29.00 and 60.00 order by preco_m;

select*from tb_pizza where nome like "%c%" order by nome;

select*
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.piz_id order by tb_categoria.tipo;

select*
from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.piz_id where tb_categoria.tipo="Salgado" order by nome;