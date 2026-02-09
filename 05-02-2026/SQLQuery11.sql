select *from Orders
select *from Employees

select c.name,count(*) from Customers as c
join Orders as o
on c.customer_id=o.customer_id
group by c.name


select *from Employees
select *from Department

select d.dep_name,count(*) from Department as d
left join Employees as e
on d.dep_id=e.dep_id
group by d.dep_name

select *from Orders
select *from Customers
select *from Order_Items
select *from Products
