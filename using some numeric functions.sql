USE united_nations;

SELECT
COUNT(*) AS number_of_entry,
MIN(Time_period) AS min_time_period,
MAX(Time_period) AS max_time_period,
AVG(Pct_managed_drinking_water_services) AS pct_access_water_services,
COUNT(DISTINCT Country_name) AS Country_name
FROM access_to_basic_services 

SELECT 
	Country_name,
	Time_period,
	ROUND(Est_gdp_in_billions) AS rounded_gdp_billions,
	LOG(Est_gdp_in_billions) AS log_gdp_billions
FROM
	access_to_basic_services;
    
SELECT
	Region,
    Sub_region,
	MIN(Pct_managed_drinking_water_services) AS min_Pct_managed_drinking_water_services,
	MAX(Pct_managed_drinking_water_services) AS max_Pct_managed_drinking_water_services,
	AVG(Pct_managed_drinking_water_services) AS avg_Pct_managed_drinking_water_services,
	COUNT(DISTINCT Country_name) AS number_of_countries,
	SUM(Est_gdp_in_billions) AS gdp_in_billions
FROM
	access_to_basic_services
    WHERE 
	Time_period = 2020
    AND Pct_managed_drinking_water_services < 60
GROUP BY
	Region,Sub_region
    HAVING 
		COUNT(DISTINCT Country_name) < 4
    ORDER BY
	gdp_in_billions ASC
    
    