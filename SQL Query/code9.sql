-- Top 15 District with highest numbers of domestic visitors against year 
-- I have used RANK function and CTE feature here to create a subquery for getting the required result 

WITH Top_D AS (
SELECT district, year, SUM(domestic_visitors) AS total_domestic_visitors,
RANK() OVER (PARTITION BY year ORDER BY SUM(domestic_visitors) DESC) AS district_rank
FROM maharashtra_visitors
GROUP BY district, year
)
SELECT district, year, total_domestic_visitors, district_rank
FROM Top_D
WHERE district_rank<=15;