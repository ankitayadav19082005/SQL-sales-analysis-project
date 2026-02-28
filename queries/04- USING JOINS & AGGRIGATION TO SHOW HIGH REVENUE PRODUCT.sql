/* sql query to show products that generate high revenue */

select p.product_name, p.product_id,
sum(oi.quantity*oi.unit_price) as revenue
from products p
join order_item oi on p.product_id = oi.product_id
group by  p.product_name, 
          p.product_id
order by revenue desc;


select country,contact_name from customer;