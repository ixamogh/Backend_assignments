select *from users
select *from reviews
select *from orders
select *from restaurants
select *from delivery_partners
select *from review_history

--Find top 5 highest rated restaurants 
select top 5 avg(rs.restaurant_rating) as avg_Rating,r.name,r.restaurant_id from restaurants as r
join orders as o
on r.restaurant_id=o.restaurant_id
join reviews as rs
on rs.order_id=o.order_id
group by r.restaurant_id,r.name
order by avg_Rating DESC


update reviews 
set review_locked=1
where datediff(hour,created_at,SYSDATETIME())>24


update reviews 
set review_comment='Nice',
    updated_at=SYSDATETIME()
where review_id=8 and review_locked!=1

--Fetch reviews with rating less than 3 
select r.restaurant_id,r.name,rs.restaurant_rating,rs.review_comment
from reviews rs
join orders o on o.order_id = rs.order_id
join restaurants r on r.restaurant_id = o.restaurant_id
where rs.restaurant_rating<3
order by rs.restaurant_rating;

--Fetch review details along with order ID and user 
select u.name,o.order_id,r.review_comment, r.restaurant_rating,
r.partner_rating from users as u
join orders as o
on u.user_id=o.user_id
join reviews as r
on o.order_id=r.order_id



--Calculate average rating of a restaurant 
select r.restaurant_id,r.name,avg(rs.restaurant_rating) as AVG_rating from reviews as rs
join orders as o
on o.order_id=rs.order_id
join restaurants as r
on o.restaurant_id=r.restaurant_id
group by r.restaurant_id,r.name



select *from reviews
where datediff(hour,created_at,SYSDATETIME())<=24
--Fetch reviews created today 
select *
from reviews
where cast(created_at as date) = cast(sysdatetime() as date);

select r.order_id,u.name from reviews as r
join users as u
on r.user_id=u.user_id
group by u.name,r.order_id
order by r.order_id