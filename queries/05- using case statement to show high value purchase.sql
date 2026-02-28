/* SQL QUERY TO SHOW CUSTOMER SEGMENTENCE USING CASE STATEMEANT */

select c.customer_id,
       c.contact_name,
sum(oi.quantity* oi.unit_price) as total_revenue,
case
when sum(oi.quantity* oi.unit_price)  >= 909.9 then "high value"
when sum(oi.quantity* oi.unit_price) >= 10.65 then "medium value"
else "low value"
end as customer_segment
from customer c
join orders o
on c.customer_id = o.customer_id
join order_item oi
on o.order_id = oi.order_id
group by c.customer_id,
		 c.contact_name
order by total_revenue desc;