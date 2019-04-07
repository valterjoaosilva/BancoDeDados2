create database Pedidos;
use pedidos;

create table cliente(
cod_cliente int not null auto_increment primary key,
razao_social varchar(100) not null,
nome_fantasia varchar(100) not null, 
telefone varchar(20), 
cod_cidade int );


create table pedido(
num_pedido int not null auto_increment primary key,
data_hora datetime not null,
cod_cliente int);

create table cidade(
cod_cidade int primary key not null auto_increment,
nom_cidade varchar(40) not null,
cod_uf int);


create table uf(
cod_uf int primary key not null auto_increment,
sigla_uf Char(2) not null,
nome_uf varchar(40) not null);

create table itens_pedido(
num_pedido int not null,
cod_produto int,
qtde decimal(10,3),
val_unit decimal(10,3),
val_total decimal(10,2));

create table produto(
cod_produto int primary key not null auto_increment,
des_produto varchar(200),
peso decimal(10,3),
foto blob);

alter table itens_pedido
add primary key(num_pedido, cod_produto);

insert into produto
values (1, 'cadeira', 20.3, 3);

alter table cliente
add foreign key (cod_cidade)
	references cidade(cod_cidade);
    

alter table pedido 
add foreign key (cod_cliente)
	references cliente (cod_cliente);
  
    alter table cliente
    modify cod_cliente int auto_increment;
    
    alter table pedido
    modify num_pedido int auto_increment;
    
    alter table cidade
    modify cod_cidade int auto_increment;
    
    alter table uf
    modify cod_uf int auto_increment;
    
     alter table uf
    modify cod_uf int;
    
    alter table produto
    modify cod_produto int auto_increment;

insert into cidade (nom_cidade)
values('Guimarães Rosa'),
 ('Celso Freitas');		
    
alter table cliente
modify razao_social varchar(100);

insert into cliente (nome_fantasia)
values ('Rogerio Erielli'), ('Albaneza Erielli');

select * from cliente;

update cliente
set nome_fantasia = 'Instituto Federal de Santa Catarina'
where cod_cliente = '1';

insert into uf (cod_uf, sigla_uf, nome_uf)
values (1, 'SC', 'Santa Catarina'), (2, 'PR', 'Parana'), (3, 'RS', 'Rio Grande do Sul');

insert into cidade(nom_cidade, cod_uf)
values('Gaspar', 1);

select * from itens_pedido;

insert into itens_pedido
(num_pedido, cod_produto, qtde, val_unit, val_total)
values('100', '200', '5', '12.50', '49.00');
    
    select * from itens_pedido;

insert into itens_pedido
(num_pedido, cod_produto, val_unit, val_total)
values('101', '210', '12.50', '49.00'), ('102', '210', '13.50', '52.50');

select * from itens_pedido;
delete from itens_pedido
where qtde = null;

select * from cliente;

delete from cliente
where cod_cliente= 3;

select * from uf;

delete from uf
where sigla_uf= 'SC';

select * from uf;





  





