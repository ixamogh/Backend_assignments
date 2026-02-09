select *from Orders
select *from Customers

select customer_id from Customers where customer_id in(select customer_id from Orders)

select customer_id from Customers where customer_id not in(select customer_id from Orders)

select * from Products where product_id not in(select product_id from Order_Items)

select * from Employees where dep_id not in (select dep_id from Department)

select *from Orders where total_amount>(select avg(total_amount) from Orders)
select *from Employees
select *from Department

select *
from employees e
where salary > (
  select avg(salary)
  from employees
  where dep_id = e.dep_id
)

select * from Department
where dep_id in (select dep_id from Department)


alter table orders add status varchar(30);

update orders set status='Cancelled' where order_id in(2,3,5,7,8,9)

select *from Orders where status not in('cancelled')

select * from Employees as e 
join Department as d on 
e.dep_id = d.dep_id and 
e.salary >(select AVG(e2.salary) from Employees as e2 where e2.dep_id=d.dep_id)


select * from Employees as e 
join (select dep_id from Department where dep_id>1) as d on 
e.dep_id = d.dep_id 

select * from Customers as c where exists (select * from Orders as o where o.customer_id=c.customer_id)

select * from Customers as c where not exists (select * from Orders as o where o.customer_id=c.customer_id)


select * from Employees as e
join 
(select dep_id,count(*) as employees_total from Employees group by dep_id) as emp_count on
e.dep_id = emp_count.dep_id


