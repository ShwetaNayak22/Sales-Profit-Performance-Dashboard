-- Identify Underperforming Regions

SELECT 
    c.region, SUM(o.profit) AS total_profit
FROM
    orders o
        JOIN
    customers c ON o.customer_id = c.customer_id
GROUP BY c.region
HAVING total_profit < 10000;