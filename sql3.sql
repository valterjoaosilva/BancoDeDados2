select * from products;

select * from customers
where Country in ('Germany', 'France');

select * from customers
where Country  in (select Country from suppliers);

select * from customers
where ContactName like '%Brown%'; 

select * from customers
where ContactName like '%Brown%'; 

select * from customers;