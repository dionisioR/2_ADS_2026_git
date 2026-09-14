create database tutorial_aula_bd_3;
use tutorial_aula_bd_3;

drop table teste;

create table teste(
	id int auto_increment primary key,
    nome varchar(20) not null,
    sobrenome varchar(20) null,
    ativo boolean not null default true,
    cpf varchar(20) unique,
    preco decimal(8,2) not null check(preco between 0 and 100)
);

insert into teste(nome, sobrenome, ativo, cpf, preco)
values('FATEC', 'Guaratinguetá', true, '111-111-112-00', 10);

insert into teste(nome, sobrenome, ativo, preco)
values('FATEC', 'Guaratinguetá', true, 10);
select * from teste;

insert into teste(nome, sobrenome, ativo)
values('FATEC', 'Guaratinguetá', false);

insert into teste(nome, ativo)
values('FATEC', false);

insert into teste(nome)
values('FATEC');

select * from teste;


insert into teste()
values();

select * from teste;


