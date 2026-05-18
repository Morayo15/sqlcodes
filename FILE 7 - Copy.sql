DROP DATABASE united_nations;
  CREATE DATABASE united_nations;

  USE united_nations;
  
  CREATE TABLE Access_to_Basic_Services(
   Region VARCHAR(32),
  Sub_region VARCHAR(25),
  Country_name VARCHAR(37) NOT NULL,
  Time_period INTEGER  NOT NULL,
  Pct_managed_drinking_water_services NUMERIC(5,2),
  Pct_managed_sanitation_services NUMERIC(5,2),
  Est_population_in_millions NUMERIC(11,6),
  Est_gdp_in_billions NUMERIC(8,2),
  Land_area NUMERIC(10,2),
  Pct_unemployment NUMERIC(5,2)
);
INSERT INTO Access_to_Basic_Services(Region,Sub_region,Country_name,Time_period,Pct_managed_drinking_water_services,Pct_managed_sanitation_services,Est_population_in_millions,Est_gdp_in_billions,Land_area,Pct_unemployment) VALUES ('Sub-Saharan Africa','Western Africa','Togo',2020,70.67,20.0,8.44258,7.57,54390.0,NULL);
INSERT INTO Access_to_Basic_Services(Region,Sub_region,Country_name,Time_period,Pct_managed_drinking_water_services,Pct_managed_sanitation_services,Est_population_in_millions,Est_gdp_in_billions,Land_area,Pct_unemployment) VALUES ('Central and Southern Asia','Central Asia','Kazakhstan',2015,94.67,98.0,17.542806,184.39,2699700.0,4.93);
INSERT INTO Access_to_Basic_Services(Region,Sub_region,Country_name,Time_period,Pct_managed_drinking_water_services,Pct_managed_sanitation_services,Est_population_in_millions,Est_gdp_in_billions,Land_area,Pct_unemployment) VALUES ('Central and Southern Asia','Central Asia','Kazakhstan',2016,94.67,98.0,17.794055,137.28,2699700.0,4.96);
INSERT INTO Access_to_Basic_Services(Region,Sub_region,Country_name,Time_period,Pct_managed_drinking_water_services,Pct_managed_sanitation_services,Est_population_in_millions,Est_gdp_in_billions,Land_area,Pct_unemployment) VALUES ('Central and Southern Asia','Central Asia','Kazakhstan',2017,95.0,98.0,18.037776,166.81,2699700.0,4.9);


DELETE FROM access_to_basic_services
WHERE Sub_region = 'Central Asia';

SET SQL_SAFE_UPDATES = 0