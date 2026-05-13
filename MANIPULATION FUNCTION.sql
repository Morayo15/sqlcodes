SELECT * FROM united_nations.access_to_basic_services;

SELECT
	DISTINCT  Country_name,
    LENGTH(Country_name) AS String_length,
    POSITION('(' IN Country_name) AS position_opening_bracket,
   RTRIM( LEFT(Country_name, POSITION('(' IN Country_name)-1)) AS new_country_name,
    LENGTH(RTRIM( LEFT(Country_name, POSITION('(' IN Country_name)-1))) AS new_country_name_length
    
FROM
	united_nations.access_to_basic_services
WHERE
	Country_name LIKE "%(%)%"