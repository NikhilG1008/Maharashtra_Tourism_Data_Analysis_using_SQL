-- Top 10 District with highest numbers of domestic visitors

SELECT district, SUM(domestic_visitors) AS total_domestic_visitors
FROM maharashtra_visitors
GROUP BY district
ORDER BY total_domestic_visitors DESC
LIMIT 10;
