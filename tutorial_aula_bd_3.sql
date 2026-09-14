create database tutorial_aula_bd_4;
use tutorial_aula_bd_4;
drop table produtos;
create table produtos(
	id int primary key auto_increment,
    nome varchar(100),
    preco decimal(8,2) not null,
    qtde varchar(100)
);
select * from produtos;
insert into produtos(nome, preco, qtde)
values( "TV", 5000, 'dez'),
('Celular',2000, 'dez'),
('Fogão',1800, 'dez');

select * from produtos;

-- alter
alter table produtos add estoque int;
alter table produtos add qtde int not null;

alter table produtos drop column qtde;

truncate produtos;
alter table produtos modify preco decimal(8,2) not  null;
alter table produtos modify preco decimal(8,2) null;
alter table produtos modify qtde int not null;

insert into produtos(nome, estoque)
values ('Placa Mãe', 2200);

select * from produtos;

select now();

alter table produtos rename to itens;
select * from produtos;
select * from itens;

show tables;
describe produtos;

show index from itens;



drop table produtos; -- destruir a estrutura
truncate produto; -- apaga os registros mas mantém a estrutura da tabela