create database senac;
use senac;

CREATE TABLE Produto (
  id INT NOT NULL auto_increment,
  valor DOUBLE NOT NULL,
  qtd INT NOT NULL,
  fabricante VARCHAR(45),
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id))

select * from produto;
describe produto;

insert into produto (nome, fabricante, qtd, valor) values
('Dorflex', 'Sanofi', 35, 3.89),
('Dipirona', 'Sanofi', 50, 3.99),
('Estomazil', 'Cosmed', 60, 2.46),
('Colgate', 'P&G', 55, 6.49),
('Salonpas Adesivo', 'Hisamitsu Farmacêutica', 15, 8.50),
('Engov', 'Hypera Pharma', 25, 7.99);

/*==============================================================================================================================*/

CREATE TABLE Cliente (
	id INT NOT NULL auto_increment,
	nome VARCHAR(45) NOT NULL,
	CPF VARCHAR (14) NOT NULL UNIQUE, 
	telCliente VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
	PRIMARY KEY (id));
   
describe cliente;
select * from cliente;


insert into cliente (nome, CPF, telCliente, email) values
("Mariana", "111.111.111-11", "(11)11111-1111", "mariana@email.com"), 
("Maysa", "222.222.222-22", "(22)22222-2222", "maysa@email.com"),
("Luan", "333.333.333-33", "(33)33333-3333", "luan@email.com"),
("Matheus", "444.444.444-44", "(44)44444-4444", "matheus@email.com"),
("Vinicius", "555.555.555-55", "(55)55555-5555", "vinicius@email.com");


CREATE TABLE IF NOT EXISTS Venda (
  id INT NOT NULL auto_increment,
  valorFinal DOUBLE NOT NULL,
  idCliente INT NULL,
  dtvenda DATE not null,
  PRIMARY KEY (id),
  FOREIGN KEY (idCliente) REFERENCES Cliente (id))
ENGINE = InnoDB;

select * from venda;

delete from venda where id = 19;

INSERT INTO venda (valorFinal, idCliente, dtvenda) values
(23.46, 1, '2021-05-10'),
(38.45, 2, '2021-03-15'),
(29.23, 3, '2021-05-21'),
(29.23, 4, '2021-05-21'),
(66.87, 2, '2021-05-21'),
(118.84, 1, '2021-05-21');


CREATE TABLE IF NOT EXISTS ItemVenda (
  idVenda INT NOT NULL,
  idProduto INT NOT NULL,
  quantidade INT NOT NULL,
  FOREIGN KEY (idProduto) REFERENCES Produto (id),
  FOREIGN KEY (idVenda) REFERENCES Venda (id))
ENGINE = InnoDB;

INSERT INTO itemvenda (idVenda, idProduto, quantidade) VALUES(1, 2, 1),
(1, 4, 3),
(2, 4, 1),
(2, 6, 4),
(3, 4, 1),
(3, 3, 6),
(3, 2, 2),
(4, 4, 1),
(4, 3, 6),
(4, 2, 2),
(5, 2, 1),
(5, 2, 6),
(5, 4, 6),
(6, 4, 6),
(6, 6, 10);

/*==============================================================================================================================*/

CREATE TABLE usuario (
  id INT NOT NULL auto_increment,
  nome VARCHAR(255),
  usuario VARCHAR(255),
  senha VARCHAR(255),
  perfil VARCHAR(255),
	PRIMARY KEY (id)
);

describe usuario;
select * from usuario;

/*ATENÇÃO: senha de todos os perfils: 1234*/

insert into usuario (nome, usuario, senha, perfil) values ('Administrator', 'admin', '$2a$08$V8ri3vKN214TftTIs5cy7O1aa6xqnzWikmQdRjZdynmLmHOlUl.wm', 'admin');
insert into usuario (nome, usuario, senha, perfil) values ('Vendedor', 'vendedor', '$2a$08$V8ri3vKN214TftTIs5cy7O1aa6xqnzWikmQdRjZdynmLmHOlUl.wm', 'vendedor');
insert into usuario (nome, usuario, senha, perfil) values ('Gerente', 'gerente', '$2a$08$V8ri3vKN214TftTIs5cy7O1aa6xqnzWikmQdRjZdynmLmHOlUl.wm', 'gerente');
insert into usuario	(nome, usuario, senha, perfil) values ('BackOffice', 'back', '$2a$08$V8ri3vKN214TftTIs5cy7O1aa6xqnzWikmQdRjZdynmLmHOlUl.wm', 'back');


/* ================================================================================================================

select * from cliente where nome like "%m%";

delete from cliente where CPF = "11111111111";

insert into cliente (nome, CPF, telCliente, email) values
("Mariana", "11111111111", "(11)11111-1111", "mariana@email.com");

update cliente set nome="Mariana" where cpf= "11111111111";

select * from cliente where CPF="11111111111";

select * from cliente where nome="mariana";*/



 

