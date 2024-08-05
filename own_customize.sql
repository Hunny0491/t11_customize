select * from company

select * from car



 --- 1.Create report of brand_name  of rating with min,max.


select a.brand_name, min(c.rating) as min_rat,
	max(c.rating) as max_rat from car as c
inner join company as a
on a.brand_rank=c.brand_rank
group by a.brand_name



 --- 2.get data count of rating,  brand_rank between 10-20 with car_type


select car_type,count(rating) as car_rat from car
where brand_rank between '10' and '20'
group by car_type order by car_type




 --- 3.get data of all car_type with avg rating


select car_type, avg(rating) as car_rating from car
group by car_type




--- 4.use full join to join both table with model_name asc

	
select c.model_name,a.brand_rank,a.brand_name,a.country,c.rating from car as c
full join company as a
on c.brand_rank=a.brand_rank
order by model_name asc




