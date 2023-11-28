-- Top 10 District with highest numbers of foreign visitors

SELECT district, SUM(foreign_visitors) AS total_foreign_visitors
FROM maharashtra_visitors
GROUP BY district
ORDER BY total_foreign_visitors DESC
LIMIT 10;