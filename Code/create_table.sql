CREATE TABLE ev_sales_world (
  Country VARCHAR(30) NOT NULL,
  Parameter VARCHAR(30) NOT NULL,
  Mode VARCHAR(30) NOT NULL,
  Powertrain VARCHAR(30) NOT NULL,
  Year INT,
  Unit VARCHAR(30) NOT NULL,
  Value INT
);

create table ev_sales_usa(
  Vehicle VARCHAR(100) NOT NULL,
  Vehicle_Type VARCHAR(30) NOT NULL,
  Year_2011 int,
  Year_2012 int,
  Year_2013 int,
  Year_2014 int,
  Year_2015 int,
  Year_2016 int,
  Year_2017 int,
  Year_2018 int,
  Year_2019 int,
  Total int
);

create table ev_sales_or_large(
  First_Reg_Date date,
  Last_Reg_Date date,
  Reg_Extn_Date date,
  Zev_Type VARCHAR(30) NOT NULL,
  Vehicle_Type VARCHAR(30) NOT NULL,
  Model_Year int,
  Manufacturer VARCHAR(100) NOT NULL,
  Model VARCHAR(100) NOT NULL,
  Veh_Weight float,
  Avg_MPG float,
  County VARCHAR(30) NOT NULL,
  City VARCHAR(30) NOT NULL,
  Zip int,
  State VARCHAR(30) NOT NULL,
  Electric_Utility VARCHAR(30) NOT NULL,
  First_Reg_Year int,
  New_vs_Used VARCHAR(30) NOT NULL
);


-- Drop all the tables in current DataBase
do $$ declare
	r record;
begin
	for r in (select tablename from pg_tables where schemaname = current_schema()) loop
		execute 'drop table ' || quote_ident(r.tablename) || ' cascade' ;
	end loop;
end $$