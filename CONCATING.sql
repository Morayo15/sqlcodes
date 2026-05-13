SELECT * FROM united_nations.access_to_basic_services;

SELECT
DISTINCT Country_name,
Time_period,
Est_population_in_millions,
CONCAT(
Country_name,
Time_period,
Est_population_in_millions
) AS Country_ID
FROM united_nations.access_to_basic_services;

SELECT
DISTINCT Country_name,
Time_period,
Est_population_in_millions,
CONCAT(
	SUBSTRING(UPPER(IFNULL(Country_name,'UNKNOWN')),1,4),
	SUBSTRING(IFNULL(Time_period,'UNKNOWN'),1,4),
	SUBSTRING(IFNULL(Est_population_in_millions,'UNKNOWN'),-7)
) AS Country_ID
FROM
	united_nations.access_to_basic_services;