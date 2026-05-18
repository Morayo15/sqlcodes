USE united_nations;
SELECT *
FROM united_nations.access_to_basic_services
WHERE Region like '%Africa';

SELECT
	CASE
	WHEN Country_name IN ('Angola', 'Botswana', 'Comoros', 'Democratic Republic of Congo', 'Eswatini', 
						'Lesotho', 'Madagascar', 'MalawI', 'Mauritius','Mozambique', 'Namibia', 
                        'Seychelles', 'South Africa', 'United Republic Tanzania', 'Zambia', 'Zimbabwe')
			THEN 'SADC'
        
			WHEN Country_name IN ("Algeria", "Libya", "Mauritania", "Morocco", "Tunisia")
			THEN "UMA"
            
			WHEN Country_name  IN ('Condo", "Burkina Faso", "Cabo Verde", "Cote d'"Ivoire", "Gambia", "Ghana", "Guinea",
					"Guinea Bissau", "Liberia", "Mali", "Niger", "Nigeria", "Senegal", "Sierra leone", "Togo")
            THEN "ECOWAS"
            
            ELSE 'Not Classified'
	END AS Regional_economic_community,
    MIN(Pct_managed_drinking_water_services) AS min_pct_managed_drinking_water_services,
    AVG(Pct_managed_drinking_water_services) AS Avg_pct_managed_drinking_water_services,
    MAX(Pct_managed_drinking_water_services) AS Max_pct_managed_drinking_water_services
FROM  united_nations.access_to_basic_services
WHERE Region like '%Africa'
GROUP BY
CASE
	WHEN Country_name IN ('Angola', 'Botswana', 'Comoros', 'Democratic Republic of Congo', 'Eswatini', 
						'Lesotho', 'Madagascar', 'MalawI', 'Mauritius','Mozambique', 'Namibia', 
                        'Seychelles', 'South Africa', 'United Republic Tanzania', 'Zambia', 'Zimbabwe')
			THEN 'SADC'
        
			WHEN Country_name IN ("Algeria", "Libya", "Mauritania", "Morocco", "Tunisia")
			THEN "UMA"
            
			WHEN Country_name  IN ('Condo", "Burkina Faso", "Cabo Verde", "Cote d'"Ivoire", "Gambia", "Ghana", "Guinea",
					"Guinea Bissau", "Liberia", "Mali", "Niger", "Nigeria", "Senegal", "Sierra leone", "Togo")
            THEN "ECOWAS"
            
            ELSE 'Not Classified'
	END;
