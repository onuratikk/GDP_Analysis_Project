-- EN Y�KSEK VE EN D���K GDP DE�ERLER�N� BULALIM

SELECT country, MAX(gdp) AS max_gdp, MIN(gdp) AS min_gdp
FROM gdp_data
GROUP BY country;

-- HER �LKEN�N YILLIK ORTALAMA B�Y�ME ORANINI HESAPLAYALIM

SELECT country, 
       AVG(gdp_diff) AS avg_growth
FROM (
    SELECT country, 
           gdp - LAG(gdp) OVER (PARTITION BY country ORDER BY year) AS gdp_diff
    FROM gdp_data
) AS subquery
GROUP BY country;

-- �LKELER BAZINDA ORTALAMA GSY�H (GDP) DE�ER� VE YILLIK B�Y�ME ORANI ANAL�Z�
SELECT country,
       AVG(gdp) AS avg_gdp,
       AVG(gdp_diff) AS avg_growth,
       AVG(gdp_percent_change) AS avg_growth_percent
FROM (
    SELECT country,
           year,
           gdp,
           gdp - LAG(gdp) OVER (PARTITION BY country ORDER BY year) AS gdp_diff,
           CASE 
               WHEN LAG(gdp) OVER (PARTITION BY country ORDER BY year) = 0 THEN NULL
               ELSE (gdp - LAG(gdp) OVER (PARTITION BY country ORDER BY year)) / LAG(gdp) OVER (PARTITION BY country ORDER BY year) * 100
           END AS gdp_percent_change
    FROM gdp_data
) AS subquery
GROUP BY country;



