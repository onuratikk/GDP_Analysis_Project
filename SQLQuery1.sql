-- EN YÜKSEK VE EN DÜÞÜK GDP DEÐERLERÝNÝ BULALIM

SELECT country, MAX(gdp) AS max_gdp, MIN(gdp) AS min_gdp
FROM gdp_data
GROUP BY country;

-- HER ÜLKENÝN YILLIK ORTALAMA BÜYÜME ORANINI HESAPLAYALIM

SELECT country, 
       AVG(gdp_diff) AS avg_growth
FROM (
    SELECT country, 
           gdp - LAG(gdp) OVER (PARTITION BY country ORDER BY year) AS gdp_diff
    FROM gdp_data
) AS subquery
GROUP BY country;

-- ÜLKELER BAZINDA ORTALAMA GSYÝH (GDP) DEÐERÝ VE YILLIK BÜYÜME ORANI ANALÝZÝ
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



