/*rank customer by total spending*/

select c.contact_name,sum(oi.quantity*oi.unit_price) as total_spend,
rank() over (order by sum(oi.quantity*oi.unit_price) desc) as total_spending_rank
from customer c
join orders o
on o.customer_id = c.customer_id
join order_item oi
on oi.order_id = o.order_id
group by c.contact_name;