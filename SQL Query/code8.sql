-- Peak & Low month level foreign vistors for Mumbai

SELECT district, month, SUM(foreign_visitors) AS total_foreign_visitors
FROM maharashtra_visitors
WHERE district="MUMBAI"
GROUP BY district, month
ORDER BY total_foreign_visitors DESC;