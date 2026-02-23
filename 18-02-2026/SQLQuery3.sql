select *from users
select *from restaurants
select *from delivery_partners
select *from orders
select *from reviews
select *from review_history

update reviews
set restaurant_rating = 4,updated_at = ''
where review_id = 1;


select review_id, updated_at from reviews;

insert into reviews
(review_id, order_id, user_id, restaurant_rating, partner_rating, review_comment)
select 9, o.order_id, o.user_id, 5, 5, 'Excellent service'
from orders o
where o.order_id = 1
and o.order_status = 'Delivered'
and o.verified_status = 1;

update reviews
set restaurant_rating = 4,updated_at = sysdatetime() where review_id = 1
and datediff(hour, created_at, sysdatetime()) <= 24;


