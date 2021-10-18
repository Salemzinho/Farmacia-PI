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



/* ================================================================================================================

select * from cliente where nome like "%m%";

delete from cliente where CPF = "11111111111";

insert into cliente (nome, CPF, telCliente, email) values
("Mariana", "11111111111", "(11)11111-1111", "mariana@email.com");

update cliente set nome="Mariana" where cpf= "11111111111";

select * from cliente where CPF="11111111111";

select * from cliente where nome="mariana";*/



 

