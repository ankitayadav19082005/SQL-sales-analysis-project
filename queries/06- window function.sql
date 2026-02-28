/* sql query to show Country-wise Total Revenue Using Window Functions */

select c.country,
       c.contact_name,
       oi.quantity * oi.unit_price as order_total_revenue,
sum(oi.quantity * oi.unit_price) 
 over( partition by c.country ) as country_total_revenue
 from customer c
 join orders o
 on c.customer_id = o.customer_id
 join order_item oi
 on o.order_id = oi.order_id;