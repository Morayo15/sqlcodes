SELECT
Sub_region,
Country_name,
Land_area,
ROUND(Land_area / SUM(Land_area) OVER (
	PARTITION BY Sub_region
) *100)AS Pct_Sub_region_land_area 

FROM
	united_nations.access_to_basic_services
WHERE
	Time_period = 2020
	AND Land_area IS NOT NULL;


SELECT
Sub_region,
Country_name,
Time_period,
Est_population_in_millions,
ROUND(Avg(Est_population_in_millions) OVER (
	PARTITION BY Sub_region ORDER BY Time_period), 4 ) AS Running_avg_population

FROM
united_nations.access_to_basic_services
WHERE
Est_population_in_millions IS NOT NULL