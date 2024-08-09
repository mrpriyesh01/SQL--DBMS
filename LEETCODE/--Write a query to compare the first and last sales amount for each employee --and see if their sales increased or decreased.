SELECT *,
    FIRST_VALUE(sale_amount) OVER w AS firstvalue,
    LAST_VALUE(sale_amount) OVER w AS lastvalue,
    CASE
        WHEN LAST_VALUE(sale_amount) OVER w > FIRST_VALUE(sale_amount) OVER w THEN 'Increased'
        WHEN LAST_VALUE(sale_amount) OVER w < FIRST_VALUE(sale_amount) OVER w THEN 'Decreased'
        ELSE 'No Change'
    END AS sales_trend
FROM employee_sales
WINDOW w AS (
    PARTITION BY employee_id 
    ORDER BY sale_date 
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
);
