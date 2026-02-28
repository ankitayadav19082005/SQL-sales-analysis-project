/* Total spending per customer */

with Customer_spending as 
( select  order_id,product_id , sum(quantity * unit_price) as spending from order_item group by order_id,product_id)
select c.contact_name , sum(s.spending) as total_spending
from customer c
join orders   o
on o.customer_id = c.customer_id
join customer_spending s 
on s.order_id = o.order_id
group by c.contact_name;