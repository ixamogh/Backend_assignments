select * from Customers as c 
left join Orders as o on 
c.customer_id = o.customer_id

select *from Customers as c
left join Orders as o
on c.customer_id=o.customer_id
where o.order_id is null

select *from Employees
select *from Department

select e.emp_name,d.dep_name,d.dep_id from Department as d
left join Employees as e
on d.dep_id=e.dep_id

SELECT d.dep_id, d.dep_name
FROM Department d
LEFT JOIN Employees e
ON d.dep_id = e.dep_id
WHERE e.emp_id IS NULL;


SELECT d.dep_id, d.dep_name
FROM Department d
LEFT JOIN Employees e
ON d.dep_id = e.dep_id
WHERE d.dep_id=3

SELECT d.dep_id,e.emp_name, d.dep_name
FROM Department d
LEFT JOIN Employees e
ON d.dep_id = e.dep_id
WHERE e.emp_name like 'm%'

 
