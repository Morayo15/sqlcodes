SELECT
Country_name,
Time_period,
Pct_managed_drinking_water_services,
Pct_managed_sanitation_services,
Est_population_in_millions,
Est_gdp_in_billions,
Region
FROM
access_to_basic_services
WHERE
Region = 'Sub-Saharan Africa'
AND
Time_period = 2020
AND
Est_gdp_in_billions IS NOT NULL
AND 
Country_name Not IN ('Nigeria', 'South Africa', 'Ethiopia', 'Kenya', 'Ghana');


	-- Country_name is Iran OR Country_name is Korea
    
    SELECT
    Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    Pct_managed_sanitation_services
    FROM
    access_to_basic_services
    WHERE
    Country_name LIKE "Iran%"
    OR Country_name LIKE "%_Republic of Korea"
    