create database test_env;

use test_env;

--inporting flat files for tables Test and Products

select * from dbo.test;

select * from dbo.products;

select * into common_table from
(select a.order_date_dd_mm_yyyy, a.product_id, a.availability, a.demand, b.product_name, b.unit_price from dbo.test as a
left join dbo.products as b
on a.product_id = b.product_id) x

select * from common_table

