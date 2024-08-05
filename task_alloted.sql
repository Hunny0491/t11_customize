select * from customer

select * from sales

 -- 1. create report of state using aggregators on sales, profit,quantity,disc 

	
select c.state, sum(s.sales) as sales_sum, avg(s.sales) as avg_sales, count(s.quantity) as qty,
min(s.discount) as min_disc, max(s.profit) as max_prof from sales as s
inner join customer as c
on s.customer_id=c.customer_id 
group by c.state

select c.state, sum(s.quantity) as qty_sum, avg(s.profit) as avg_prof, count(s.sales) as c_sales,
min(s.sales) as min_sale, max(s.quantity) as max_qtyf from sales as s
inner join customer as c
on s.customer_id=c.customer_id 
group by c.state



 -- 2.get data of all state and city AVG cx_age

	
select state, city, avg(age) as avg_cx_age from customer
group by state , city

	
select * from product

	
 -- 3.get data 2017 & 2018 with product name & sales per qty

	
select product_name,sum(s.sales)/sum(s.quantity) as sales_per_qty, p.product_name from sales as s
inner join product as p
on s.product_id=p.product_id
where order_date between '01-01-2017' and '31-12-2018'
group by product_name











