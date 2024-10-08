Write a SQL query to count the number of sales entries for each product. If the sales value is NULL,
it should not be counted in the total. Use the COALESCE() function to replace NULL values with 0 for the purpose of displaying results.


product_id	sales
1	          100
2	          NULL
3	          150
4          	NULL
5	          200

code=
SELECT 
    product_id, 
    COUNT(COALESCE(sales, 0)) AS sales_count
FROM 
    sales_data
GROUP BY 
    product_id;
