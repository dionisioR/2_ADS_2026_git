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
    
    
    
    
    
    