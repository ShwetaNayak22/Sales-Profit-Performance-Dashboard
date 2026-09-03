-- Monthly Performance Analysis

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(Sales) AS monthly_sales,
    SUM(profit) AS monthly_profit
FROM
    orders
GROUP BY year , month
ORDER BY year , month; 