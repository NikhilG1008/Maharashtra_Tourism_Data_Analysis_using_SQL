-- Bottom 10 District with lowest numbers of domestic visitors

SELECT district, SUM(domestic_visitors) AS total_domestic_visitors
FROM maharashtra_visitors
GROUP BY district
ORDER BY total_domestic_visitors 
LIMIT 10;