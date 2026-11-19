create database prod_env;

use prod_env;

--querying the table

select * from Prod;

select distinct(order_date_dd_mm_yyyy) from prod
where order_date_DD_MM_YYYY is Null or order_date_dd_mm_yyyy = ' '
--no records as null

select distinct(product_id) from prod 

select distinct product_name from products

--we have 22 product_ids but only 20 products, hence assume we got update from team saying use product_id = 21 as 7 and product_id = 22 as 11.

update prod set product_id = 7
where product_id = 21;

update prod set product_id = 11
where product_id = 22;

--joining both tables using left join

select * into common_table
from (
select a.order_date_dd_mm_yyyy, a.availability, a.demand, b.product_id, b.product_name, b.unit_price from prod as a
left join products as b
on a.product_id = b.product_id
) x

select * from common_table

