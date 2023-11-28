-- Month wise highest numbers of domestic visitors

SELECT month, SUM(domestic_visitors) AS total_domestic_visitors
FROM maharashtra_visitors
GROUP BY month
ORDER BY total_domestic_visitors DESC;