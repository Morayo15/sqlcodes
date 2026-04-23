USE united_nations;
-- SELECT all columns in the database;
SELECT
	*
FROM
	access_to_basic_services;

-- SELECT all columns and LIMIT to 10 rows
SELECT
*
FROM
access_to_basic_services
LIMIT 10;

-- SELECT distinct column
SELECT DISTINCT
	Country_name
FROM
access_to_basic_services;    

-- saving the query into a table
CREATE TABLE
Country_list(
	Country_name VARCHAR (225)
    );

-- check for country that has the lowest pct of people with access to managed drinking water services
SELECT
Country_name,
Time_period,
Pct_managed_drinking_water_services AS pct_access_water
FROM
access_to_basic_services
WHERE
Time_period =2020;