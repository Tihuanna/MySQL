
select * from tb_produtos;

select * from tb_produtos order by nome, preco DESC;

select * from tb_produtos where preco >20.00 and categoria_id = 1;

select * from tb_produtos where nome like "%ha";


select * from tb_produtos where preco in (20,30,40);

select * from tb_produtos where dtvalidade between "2021-11-07" and "2021-11-15";

select nome, DATE_FORMAT(dtvalidade, "%d/%m/%Y") as Data_de_Validade from tb_produtos where dtvalidade between "2021-11-07" and "2021-12-01";

select count(*) from tb_produtos;

select count(categoria_id) from tb_produtos;


select sum(preco) from tb_produtos;

select avg(preco) from tb_produtos;

select categoria_id, avg(preco) from tb_produtos group by categoria_id;

select max(preco) from tb_produtos;

select min(preco) from tb_produtos;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao 
from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao 
from tb_produtos left join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao 
from tb_produtos right join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select tb_categoria.descricao , avg(tb_produtos.preco)as Pmedio from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id

group by tb_produtos.categoria_id;