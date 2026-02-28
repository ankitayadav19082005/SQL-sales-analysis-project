/* show each customer's order number in sequence*/
 
 select c.contact_name,o.order_id , o.order_date, c.customer_id,
 row_number() over ( partition by c.customer_id order by o.order_date desc ) as order_number
 from customer c
 join orders o
 on o.customer_id = c.customer_id;


