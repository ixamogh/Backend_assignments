select *from Customers
select *from Products

select c.name,p.product_name as product from Customers as c
cross join Products as p

select s.supplier_id,p.product_name from Products as p
cross join Suppliers as s


