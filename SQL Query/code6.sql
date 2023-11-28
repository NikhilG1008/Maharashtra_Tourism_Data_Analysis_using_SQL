-- Month wise highest numbers of foreign visitors

SELECT month, SUM(foreign_visitors) AS total_foreign_visitors
FROM maharashtra_visitors
GROUP BY month
ORDER BY total_foreign_visitors DESC;