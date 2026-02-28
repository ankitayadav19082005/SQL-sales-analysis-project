/* SQL QUERY TO SHOW TOP 10 PREMIUM CUSTOMER*/

select c.customer_id,	
	   c.contact_name,
       sum(oi.quantity * oi.unit_price) as spent_total     
from customer c
join orders   o on c.customer_id = o.customer_id
join order_item oi on o.order_id = oi.order_id
group by c.customer_id,
         c.contact_name
order by spent_total desc
limit 10;
