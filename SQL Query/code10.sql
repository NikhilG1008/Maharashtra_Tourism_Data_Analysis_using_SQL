-- Top 15 District with highest numbers of Foreign visitors against year 

WITH Top_D AS (
SELECT district, year, SUM(foreign_visitors) AS total_foreign_visitors,
RANK() OVER (PARTITION BY year ORDER BY SUM(foreign_visitors) DESC) AS district_rank
FROM maharashtra_visitors
GROUP BY district, year
)
SELECT district, year, total_foreign_visitors, district_rank
FROM Top_D
WHERE district_rank<=15;