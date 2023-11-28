-- Peak & Low month level domestic vistors for Mumbai

SELECT district, month, SUM(domestic_visitors) AS total_domestic_visitors
FROM maharashtra_visitors
WHERE district="MUMBAI"
GROUP BY district, month
ORDER BY total_domestic_visitors DESC;