create database cadastro;
create table clientes(
cli_cod int not null,
cli_nome varchar(50) not null,
cli_telefone char(14),
cli_cpf char(14),
cli_logradouro varchar(10) not null,
cli_numero varchar(10) not null,
cli_complemento varchar(10),
cli_bairro varchar(10) not null,
cli_cep char(9) not null,
cli_cidade varchar(50) not null,
cli_uf char(2) not null);

alter table clientes
modify cli_logradouro varchar(30) not null;

alter table clientes
modify cli_complemento varchar(30);

alter table clientes
modify cli_bairro varchar(20);

create table vendedores(
ven_cod int not null,
ven_nome varchar(50) not null,
ven_valor_comissão int);

create table pedidos(
ped_id int not null,
ped_data date not null,
ven_cod int not null,
cli_cod int not null);

create table itens(
ped__id int not null, 
pro_cod int not null,
item_qt_vendida int not null,
item_valor_venda numeric(6,2) not null);

create table produtos(
pro_cod int not null,
pro_nome varchar(50) not null,
pro_valor_unit numeric(6,2) not null,
pro_qt_estoque int not null,
pro_tipo varchar(30));


insert into clientes
(cli_cod, cli_nome, cli_telefone, cli_logradouro, cli_numero, cli_complemento, cli_bairro, cli_cidade, cli_uf, cli_cep)
values
('1', 'Edson Silva', '(11) 3625-4465', 'Parque das Palmeiras', '23', 'apto 401', 'Morumbi', 'São Paulo', 'SP', '11250005'),
('2', 'Sheila Dias', '(21) 9985-6542', 'Av. Pereira Nunes', '45', null, 'botafogo', 'Rio de Janeiro', 'RJ', '22559000'),
('3', 'Carlos Camargo', '(11) 3652-7788', 'Rua das Acacias', '111', 'bloco b2, apto 1101', 'variavel', 'São Paulo', 'SP', '11447008'),
('4', 'Ronaldo Oliveira', '(21) 9587-6541', 'Av. Bariri', '56', null, 'Cosme Velho', 'Rio de Janeiro', 'RJ', '21000100'),
('5', 'Carolina Santos', '(11) 2556-9940', 'variavel', '1145', null, 'Jardim América', 'Boa Vista', 'SP', '18245009');

insert into vendedores
(ven_cod, ven_nome, ven_valor_comissão)
values
('1', 'Pedro Augusto', '10'), ('2', 'Carlos Firmino Góes', '15'), ('3', 'Maria Dias', '15'), ('4', 'José Ubaldo', '5');

insert into produtos
(pro_cod, pro_nome, pro_valor_unit, pro_qt_estoque)
values
('3', 'Caderno 100 folhas', '2.00', '20'), ('4', 'Caderno 50 folhas', '1.50', '5'), ('5', 'Cola Branc', '1.00', '3'), ('6', 'Lapiseira', '5.00', '7'), 
('7', 'Papel A4 100 folhas', '3.30', '25'), ('8', 'Papel A4 500 folhas', '15.00', '30'), ('9', 'CD-R', '1.50', '10'); 

delete from vendedores
where ven_nome='José Ubaldo';

select * from produtos;

delete from produtos
where pro_nome='CD-R';

 insert into produtos
 (pro_cod, pro_nome, pro_valor_unit, pro_qt_estoque)
values
('9', 'Apontador', '3.50', '80'), ('10', 'Borracha', '2.80', '120'), ('11', 'Giz de Cera', '5.90', '45'),
 ('12', 'Estojo', '12.00', '25'),('13', 'Canetinhas', '22.00', '40'), ('14', 'Tonner', '120.00', '15'),
 ('15', 'Mouse', '35.00', '40'), ('16', 'Teclado', '85.00', '25'), ('17', 'Estabilizador', '100.00', '20');


select * from produtos;

insert into produtos
 (pro_cod, pro_nome, pro_valor_unit, pro_qt_estoque)
values
('1', 'Caneta Esferografica Azul', '0.90', '25'), ('2', 'Caneta Esferografica Vermelha', '0.90', '10');

update produtos
set pro_valor_unit = pro_valor_unit * 1.10
where pro_cod= 8;

select * from produtos;

update produtos
set pro_tipo = 'papelaria'
where pro_tipo= null;

select * from clientes;

update clientes
set cli_nome= 'Carolina Santos Silva'
where cli_cod = 5;

select * from clientes;

select cli_nome as 'nome do cliente', cli_telefone telefone, cli_cidade municipio
from clientes
where cli_cidade = 'Rio de Janeiro' or  cli_cidade ='São Paulo'
order by 3, 1 desc;

select 
distinct cli_cidade
from clientes
order by 1;

select concat(cli_nome,' ',cli_telefone,' ',cli_logradouro,' ',cli_cidade)
from clientes;

select *
from clientes
where not cli_cidade = 'Rio de Janeiro';

select * from produtos;

update produtos
set pro_tipo = 'papelaria';








