CREATE DATABASE db_ecommerce;
use db_ecommerce;
CREATE TABLE produtos (
id bigint auto_increment,
sessao varchar(255) not null,
produto varchar(255) not null,
descricao varchar(255) not null,
caracteristica varchar(255) not null,
valor decimal(6,2) not null,

CONSTRAINT id_prod_pk primary key (id)
);
/*Insere os dados na tabela*/
INSERT INTO produtos (sessao,produto,descricao,caracteristica,valor) values ("Hardware", "Monitor", "Monitor Tubao", "Marca: LG ", 300.99);
INSERT INTO produtos (sessao,produto,descricao,caracteristica,valor) values ("Hardware", "Placa mae", " placa mae lga 1155 ", "Marca: Gigabyte ", 459.99);
INSERT INTO produtos (sessao,produto,descricao,caracteristica,valor) values ("Hardware", "Alto Falante", " Som estralando ", " Marca: JBL", 259.99);
INSERT INTO produtos (sessao,produto,descricao,caracteristica,valor) values(" Teclado", "Teclado foda", "Multilaser azul ", "Marca: Multilaser", 139.90);
INSERT INTO produtos (sessao,produto,descricao,caracteristica,valor) values ("Mouse", "Mouse do relampago marquinhos ", "Marca: HyperX ", 560.00);
INSERT INTO produtos (sessao,produto,descricao,caracteristica,valor) values ("Fone de ouvido", "Fone de 19", "Fone branco", "Marca: ShoppingTrem", 10.00);
INSERT INTO produtos (sessao,produto,descricao,caracteristica,valor) values ("Cadeira", "Cadeira Gamer ", "Cadeira ColunaPerfeita", "Marca: Ortobom", 360.08);
INSERT INTO produtos (sessao,produto,descricao,caracteristica,valor) values ("Cadeira", "Cadeira de bar", " Cadeira Amarela e vermelha", "Marca:brahma ", 50.00);

/* Preço menor que 500 reais*/
select * from produtos where valor<500;

/* Preço maior que 500 reais */
select * from produtos where valor>500;

/* Atualização da tabela */
UPDATE produtos SET valor = 849.99 WHERE product LIKE 'Placa mae lga 1155';

SELECT id, sessao, product, descricao, caracteristica, valor FROM produtos;