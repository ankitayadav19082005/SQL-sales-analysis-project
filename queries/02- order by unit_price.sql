/* BASIC SQL QUERY TO SHOW PRODUCT CHEAPER THAN A CERTAIN PRICE */

select product_name , unit_price
from products
where unit_price <24.99
order by unit_price;

