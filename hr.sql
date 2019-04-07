use hr;

select *
from employees;

select first_name, last_name, 
concat(first_name, ' - ', last_name)
from employees
order by first_name asc, last_name desc;

select first_name, last_name, 
upper(first_name),
upper(last_name)
from employees
order by last_name desc;

select * 
from employees
order by department_id;

select salary, last_name
from employees
where salary > 5000
order by last_name;

select salary
from employees
where salary >= 3000 and salary <= 6000
order by salary asc;

select first_name, phone_number, department_id
 from employees
 where department_id =10 or department_id =30;
 
 
 select  first_name, last_name, hire_date
 from employees
 order by hire_date desc;
 
 select *
 from employees
 where hire_date >='1995-01-01' and hire_date <= '2005-09-20';
 
 select *
 from employees
 where  commission_pct is null  or manager_id is null;
 
 select *
 from employees
 where  commission_pct is not null;
 
 select job_id
 from employees;
 
 
select * from employees;


