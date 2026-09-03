-- Using CASE for Business Classification

SELECT 
    order_id,
    sales,
    CASE
        WHEN sales > 1000 THEN 'high value'
        WHEN sales BETWEEN 500 AND 1000 THEN 'Medium value'
        ELSE 'low value'
    END AS order_type
FROM
    orders;