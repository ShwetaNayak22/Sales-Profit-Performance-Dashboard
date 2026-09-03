-- Growth Rate Calculation (Using Subquery)

SELECT 
    t1.month,
    t1.monthly_sales,
    (t1.monthly_sales - t2.monthly_sales) / t2.monthly_sales * 100 AS growth_percentage
FROM
    (SELECT 
        MONTH(order_date) AS month, SUM(sales) AS monthly_sales
    FROM
        orders
    GROUP BY month) t1
        JOIN
    (SELECT 
        MONTH(order_date) AS month, SUM(sales) AS monthly_sales
    FROM
        orders
    GROUP BY month) t2 ON t1.month = t2.month + 1;
