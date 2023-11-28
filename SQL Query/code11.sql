-- Top 10 District based on Annual Growth rate of foreign visitors
-- Annual Growth rate[AGR] formula is used here = (CYFV-PYFV)/PYFV
-- CYFV - foreign visitors for year 2010
-- PYFV - foreign visitors for year 2009

WITH Table1 AS (
SELECT district, year, SUM(foreign_visitors) AS CYFV 
FROM maharashtra_visitors 
WHERE year=2010
GROUP BY district
),
Table2 AS (
SELECT district, year, sum(foreign_visitors) AS PYFV 
FROM maharashtra_visitors 
WHERE year=2009
GROUP BY district
)
SELECT district, CYFV, PYFV,
ROUND(((CYFV-PYFV)/PYFV)*100,2) AS annual_growth_rate
FROM Table1 JOIN Table2
USING(district)
ORDER BY annual_growth_rate DESC
LIMIT 10;