create database db_gengame;
use db_gengame;
create table tb_classe
(
id bigint (5) auto_increment,
nick varchar(20) not null,
funcao  varchar(20) not null,
tribo varchar(20) not null,

primary key(id)
);
insert into tb_classe (nick, funcao, tribo) values ("Shisui","Top Laner","Demacia");
insert into tb_classe (nick, funcao, tribo) values ("LuanInri","Jungler","Ionia");
insert into tb_classe (nick, funcao, tribo) values ("Tihuanna","Mid Laner","Noxus");
insert into tb_classe (nick, funcao, tribo) values ("DriveByHell","Atirador","Ilha das sombras");
insert into tb_classe (nick, funcao, tribo) values ("DisherX","Suporte","Ionia");

create table tb_personagem (
id bigint auto_increment,
champ varchar(20) not null,
ad bigint(5) not null,
ap bigint(5),
ms bigint(5),
crit bigint(5),
def bigint(5),
mr bigint(5),
categoria_id bigint ,
primary key (id),
FOREIGN KEY (categoria_id) references tb_classe(id)
);

insert into tb_personagem (champ,ad,ap,ms,crit,def,mr,categoria_id) values ("Fiora",300,0,380,0,100,60,1);
insert into tb_personagem (champ,ad,ap,ms,crit,def,mr,categoria_id) values ("MasterYi",230,0,380,0,80,50,2);
insert into tb_personagem (champ,ad,ap,ms,crit,def,mr,categoria_id) values ("Twisted Fate",100,300,410,20,80,50,3);
insert into tb_personagem (champ,ad,ap,ms,crit,def,mr,categoria_id) values ("Caitlyn",300,0,380,90,60,40,4);
insert into tb_personagem (champ,ad,ap,ms,crit,def,mr,categoria_id) values ("Thresh",70,60,400,0,200,160,5);

select* from tb_classe;
select* from tb_personagem;

select * from tb_personagem where champ Like "C%";

SELECT * FROM tb_personagem WHERE def BETWEEN 80 AND 100;

select * from tb_personagem where ad > 150;

select * from tb_classe where funcao = "atirador";

select * from tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.id;

