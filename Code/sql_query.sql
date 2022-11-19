select * from ev_sales_world;

-- Get countrywise 'BEV' value to store into 'countrywise_bev_sales_world' table using "GROUP BY"
select country, sum(value) as bev_value
into countrywise_bev_sales_world
from ev_sales_world
where powertrain = 'BEV'
group by country
order by country;

-- Get countrywise 'PHEV' value to sotre into 'countrywise_phev_sales_world' table using "GROUP BY"
select country, sum(value) as phev_value 
into countrywise_phev_sales_world
from ev_sales_world
where powertrain = 'PHEV'
group by country
order by country;

-- -- Get yearwise 'BEV' value to store into 'yearwise_bev_sales_world' table using "GROUP BY"
select year, sum(value) as bev_value
into yearwise_bev_sales_world
from ev_sales_world
where powertrain = 'BEV'
group by year
order by year;

-- Get yearwise 'PHEV' value to sotre into 'yearwise_phev_sales_world' table using "GROUP BY"
select year, sum(value) as phev_value
into yearwise_phev_sales_world
from ev_sales_world
where powertrain = 'PHEV'
group by year
order by year;

-- Join "countrywise_bev_sales_world" and "countrywise_phev_sales_world"
select b.country, b.bev_value, p.phev_value, (b.bev_value+p.phev_value) as total_value
into countrywise_ev_sales_world
from countrywise_bev_sales_world b
join countrywise_phev_sales_world p
on b.country = p.country;

-- Join "yearwise_bev_sales_world" and "yearwise_phev_sales_world"
select b.year, b.bev_value, p.phev_value, (b.bev_value+p.phev_value) as total_value
into yearwise_ev_sales_world
from yearwise_bev_sales_world b
join yearwise_phev_sales_world p
on b.year = p.year;



select year, bev_value, phev_value
from yearwise_ev_sales_world
where bev_value = (select min(bev_value) from yearwise_ev_sales_world)
and phev_value = (select min(phev_value) from yearwise_ev_sales_world);

-- Get maximum sold vehicle in year 2019
select vehicle, year_2019
from ev_sales_usa
where year_2019 = (select max(year_2019) from ev_sales_usa);

-- Get maximum sold vehicle from 2011 - 2019 
select vehicle, total
from ev_sales_usa
where total = (select max(total) from ev_sales_usa);

--  Total no of sold models of each manufacturer countywise 
select county, manufacturer, model, count(model) as No_of_Model_Sold
into ev_sales_or_countywise
from ev_sales_or
where new_vs_used = 'New'
group by county, manufacturer, model
order by county;

--  Total no. of sold model for each manufacturers yearwise 
select
  extract(year FROM first_reg_date) AS year, manufacturer, model,
	count(model) as Total_Model_Sold
from ev_sales_or
where new_vs_used = 'New'
group by extract(year from first_reg_date), manufacturer, model
order by extract(year from first_reg_date), Total_Model_Sold;

-- Total no. of sold models for each manufacturers zipwise 
select zip, manufacturer, model, count(model) as No_of_Model_Sold
into ev_sales_or_zipwise
from ev_sales_or
where new_vs_used = 'New'
group by zip, manufacturer, model
order by zip;

-- Total sales of EVs by manufacturer
select manufacturer, count(manufacturer) as no_of_sold_EVs
into ev_sales_or_makerwise
from ev_sales_or
where new_vs_used = 'New'
group by manufacturer
order by no_of_sold_EVs desc;

-- Total sales of EVs by vehicle types for each manufacturer
select manufacturer, vehicle_type, count(manufacturer) as no_of_sold_EVs
into ev_sales_or_evtypewise
from ev_sales_or
where new_vs_used = 'New'
group by manufacturer, vehicle_type
order by manufacturer desc;

-- Total sales of EVs by model 
select model,  count(manufacturer) as no_of_sold_models
into ev_sales_or_modelwise
from ev_sales_or
where new_vs_used = 'New'
group by model
order by no_of_sold_models desc;

-- Average MPG for each model
select model, CAST(AVG(avg_mpg) AS numeric(12, 2))as average_MPG
into ev_sales_or_avgbymodel
from ev_sales_or
group by model
order by average_MPG desc;
