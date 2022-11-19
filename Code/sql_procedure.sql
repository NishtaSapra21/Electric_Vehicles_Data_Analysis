do $$ 
declare
  years int;
  max_val int;
  country_name char varying(50);
begin
  for years in select distinct(year) from ev_sales_world order by year
  	loop
  		max_val := (select max(value) from ev_sales_world where year = years);
		country_name := (select country from ev_sales_world where year = years
					and value = max_val and powertrain = 'BEV');
		raise info '% sold highest % BEVS in % ', country_name, max_val,years;
	end loop;
end$$;
