/*Utilize o esquema Northwind e execute as seguintes consultas em SQL:
 1Listar o primeiro e o último nome dos funcionários (employees).
 2Listar o primeiro e o último nome dos funcionários ordenando em ordem alfabética pelo primeiro nome.
 3Listar o primeiro e o último nome dos funcionários ordenando em ordem alfabética pelo primeiro nome e em ordem alfabética contrário pelo último nome.
 4Listar todos os dados dos funcionários ordenando-os pela data de nascimento.
6Listar todos os dados dos funcionários ordenando-os pela data de contratação, da mais recente para a mais antiga.
 7Listar o primeiro e o último nome dos funcionários renomeando as colunas, respectivamente, para Nome e Sobrenome.
 Listar o primeiro e o último nome dos funcionários concatenando os campos. Lembre-se de deixar um carácter de espaço entre o primeiro e o último nome. Renomeie a coluna resultante para “Nome Completo”.
 Listar o nome completo dos funcionários que estão sediados (City) em London.
 Listar o nome completo dos funcionários que estão sediados (City) em London ou Seattle.
   Listar os dados dos clientes que não estejam sediados nos EUA.
   Listar os dados dos clientes que não estejam sediados nos EUA e nem no Brasil.
   Listar os dados dos clientes que estão sediados nos EUA, mas que não estejam em Seattle e nem em San Francisco. Ordene o resultado pelo primeiro nome do cliente.
   Listar os produtos cujas quantidades em estoque (UnitsInStock) estejam iguais ou inferiores a 10 e que o preço seja superior a 30. Ordene o resultado em ordem crescente de quantidade em estoque.
   Listar os produtos que tenham entre 20 e 30 itens no estoque (UnitsInStock), mas que a categoria (CategoryID) não seja nem 4 e nem 5. Ordene os produtos pela categoria.
    DESAFIO: Listar o nome e o preço dos produtos, suas respectivas quantidades em estoque e quantidades em pedido (UnitsOnOrder), a soma destas quantidades e o cálculo do valor total em estoque. Renomeie a soma como “Total de itens” e o cálculo do valor total como “Valor total”. Ordene do maior para o menor preço.*/
    
    select * from employees;
    
    select FirstName, LastName
    from employees;
    
    select FirstName, LastName
    from employees
    order by FirstName, LastName desc;
    
    select * from employees
    order by HireDate;
  
    
    select FirstName nome, LastName sobrenome
    from employees;
   
    select * from employees;
    
    select 
    LastName Nome, FirstName Sobrenome
    from employees;
    
    select 
    concat(FirstName, ' - ', LastName) as 'Nome Completo'
    from employees;
    
    select LastName, FirstName
    from employees
    where city = 'London';
    
	select LastName, FirstName
    from employees
    where city = 'London' || 'Seattle';
    
	select *
    from customers
    where Country != 'USA';
    
    select *
    from customers
    where not Country = 'USA' or 'Brazil';
 
 select * from customers
where Country = 'USA' and (City <> 'Seatlle' && City <> 'San Francisco')
order by ContactName;

select *from products;

select *
from products
where UnitsInStock <= 10 and UnitPrice > 30
order by UnitsInStock Asc;

select *
from products
where UnitsInStock >= 20 and UnitsInStock <=30 and CategoryID <> 4 and CategoryID <> 5
order by CategoryID;

select * 
from employees;

select *
from employees
where date(BirthDate, 'M')=7; 

select *
from products;

select
	date_format(min(hire_)


    
    
    
    
    
    
    
   
   
    
    
    
    
    
    
    
    
    
    
    
    