create database livraria;
use livraria;

create table livros (
idlivros INT primary key auto_increment,
livros_nome varchar(45),
livros_estoque int,
preco_compra decimal,
preco_venda decimal,
fkGenero int,
fkAutor int,
CONSTRAINT fkGeneroLivro FOREIGN KEY (fkGenero)
        REFERENCES genero (idGenero),
        CONSTRAINT fkAutorLivro FOREIGN KEY (fkAutor)
        REFERENCES autor (idAutor)
        
);

drop table livros;

create table genero (
idGenero int primary key auto_increment,
genero_nome varchar(45)
);

create table autor (
idAutor int primary key auto_increment,
autor_nome varchar(45)
);

insert into genero (genero_nome) values 
('Romance'),
('Poesia'),
('Horror'),
('Fantasia');

select * from genero;

select * from livros;
