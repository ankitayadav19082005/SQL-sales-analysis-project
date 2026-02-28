/* Find products whose total sales revenue is greater than the average product revenue */

select p.product_id , p.product_name,
        sum(oi.quantity * oi.unit_price) as total_revenue
from products p
join order_item oi
on p.product_id = oi.product_id
group by product_id
having sum( oi.quantity * oi.unit_price) >
( select avg(total_revenue) from ( select product_id , sum(quantity * unit_price) as total_revenue
                                   from order_item group by product_id ) as reveune_table);
		