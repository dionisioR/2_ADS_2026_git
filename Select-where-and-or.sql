create database Escola;
use escola;

create table alunos(
	id int primary key auto_increment,
    nome varchar(50),
    idade int,
    cidade varchar(50),
    nota int    
);

INSERT INTO alunos (id, nome, idade, cidade, nota) VALUES
(1, 'Ana', 20, 'São Paulo', 85), (2, 'Bruno', 22, 'Rio de Janeiro', 70), (3, 'Carla', 19, 'São Paulo', 95), (4, 'Daniel', 21, 'Belo Horizonte', 60), (5, 'Elisa', 23, 'Rio de Janeiro', 88), (6, 'Fernando', 20, 'São Paulo', 75), (7, 'Gabriela', 22, 'Curitiba', 90), (8, 'Henrique', 18, 'São Paulo', 65), (9, 'Isabela', 24, 'Salvador', 92), (10, 'João', 21, 'Rio de Janeiro', 78), (11, 'Karina', 19, 'Belo Horizonte', 82), (12, 'Lucas', 23, 'Curitiba', 55), (13, 'Marina', 20, 'Salvador', 97), (14, 'Nicolas', 22, 'São Paulo', 73), (15, 'Olivia', 18, 'Rio de Janeiro', 80), (16, 'Pedro', 25, 'Belo Horizonte', 68), (17, 'Quintino', 19, 'Curitiba', 91), (18, 'Rafaela', 24, 'São Paulo', 76), (19, 'Sofia', 21, 'Salvador', 84), (20, 'Thiago', 20, 'Rio de Janeiro', 89);

select * from alunos;
select nome, idade from alunos;
select nome, nota from alunos;

select * from alunos where nota >= 70;
select * from alunos where cidade = 'São Paulo';
select * from alunos where cidade = 'São Paulo' and nota >= 70;






