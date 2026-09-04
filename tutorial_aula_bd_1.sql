create database tutorial_aula_bd_1;
use tutorial_aula_bd_1;
-- drop table departametos;
create table departamentos(
	id int primary key auto_increment,
    nome varchar(80),
    descricao text
)engine=innodb;

create table funcionarios(
	id int primary key auto_increment,
    nome varchar(100),
    salario decimal(8,2),
    data date,
    id_departamento int not null,
    foreign key (id_departamento) references departamentos(id)
)engine=InnoDB;
    
insert into departamentos(nome, descricao)
values ('TI', 'Departamento de Tecnologia da Informação');

insert into departamentos(nome, descricao)
values ('RH', 'Departamento de Recursos Humanos'),
('Vendas', 'Departamento de Vendas');

select * from departamentos;
    
insert into funcionarios(nome, salario, data, id_departamento)
values
('Rodrigo', 5500, '2026-09-04', 1),
('Ana', 6000, '2026-08-04', 2),
('Maria', 6500, '2026-07-04', 3),
('João', 7000, '2026-06-04', 1),
('José', 7500, '2026-05-04', 2);

select * from funcionarios;
select nome from funcionarios;
select nome, salario from funcionarios;
select nome, salario from funcionarios where salario >= 6000;
    
select f.nome, d.nome, f.salario, f.data from funcionarios f 
inner join departam	entos d on f.id_departamento = d.id;

select f.nome, d.nome, f.salario, f.data from funcionarios f 
inner join departamentos d on f.id_departamento = d.id
where f.salario > 6000;
    
show tables;
    