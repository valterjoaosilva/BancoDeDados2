-- Exercicio 3
create database HumanResorces;
use HumanResorces;

create table departaments(
dept_no char(4) not null primary key,
dept_name varchar(40) not null,
index (dept_name));

create table employees(
emp_no int(11) not null primary key,
birth_date date not null,
first_name varchar(14) not null,
last_name varchar(16) not null,
gender enum('M','F') not null,
hire_date date not null);

create table dept_emp(
emp_no int(11) not null,
dept_no char(4) not null,
from_date date not null,
to_date date not null,
primary key (emp_no,dept_no),
foreign key (emp_no) references employees (emp_no),
foreign key (dept_no) references departaments (dept_no));

create table salaries(
emp_no int(11) not null,
salary int(11) not null,
from_date date not null,
to_date date not null,
primary key (emp_no,from_date),
foreign key (emp_no) references employees (emp_no));

create table titles(
emp_no int(11) not null,
title varchar(50) not null,
from_date date not null,
to_date date,
primary key (emp_no,title,from_date),
foreign key (emp_no) references employees (emp_no));

create table dept_manager(
dept_no char(4) not null,
emp_no int(11) not null,
from_date date not null,
to_date date not null,
primary key (dept_no,emp_no),
foreign key (dept_no) references departaments (dept_no),
foreign key (emp_no) references employees (emp_no));

Describe departaments;

-- Exercicio 4

-- 1) Qual o comando que permite mostrar todas as tabelas de um esquema/database?
-- R: show tables

-- 2) Qual o comando que seleciona um esquema previamente criado para ser utilizado?
-- R: Comando USE

-- 3) Como deve ser o comando para criar um novo database
-- R: Create Database

-- 4) Qual o comando que deve ser submetido para ver a estrutura de uma tabela?
-- R: Describe

-- 5)
ALTER TABLE departaments ADD dept_location char(20);

-- 6)
Describe dept_emp;
alter TABLE dept_emp DROP foreign key dept_emp_ibfk_1;
alter TABLE dept_emp DROP foreign key dept_emp_ibfk_2;

ALTER TABLE dept_emp DROP primary key;
ALTER TABLE dept_emp DROP index dept_no;

alter table dept_emp add primary key (Dept_no, Emp_no, From_date, To_date);

alter table dept_emp add foreign key(dept_no) references departaments(dept_no);

alter table dept_emp add constraint dept_emp_emp_no foreign key(Emp_no) references employees(emp_no);

-- 7)
Alter Table employees add emp_mgr int(11) not null, add foreign key(emp_mgr) references employees (Emp_no);

-- 8)
Alter Table salaries modify salary decimal(7,2);

-- 9)
Create Table Employees_bkup Like Employees;

-- 10)
create table Employees_bkup_2 Select * from Employees;

-- 11)
ALTER TABLE departaments ADD UNIQUE (dept_no);

-- 12)
ALTER TABLE employees ADD picture Blob;

-- 13)
Alter Table employees modify picture Blob(65535);

-- 14)
ALTER TABLE departaments modify dept_location char(20) not null;

-- 15)
create table projects(
project_name varchar(20),
start_date Date,
due_date Date,
emp_no Int,
status char(20));

-- 16)
ALTER TABLE projects ADD PROJECT_ID INT UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (PROJECT_ID);

-- 17)
create table children(
child_name varchar(20),
birth_date Date,
gender enum('M','F') not null);

create table addresses(
zip_code char(20),
state char(20),
country varchar(20),
address varchar(20),
address_description varchar(20),
address_no char(20),
emp_no int,
city varchar(20));