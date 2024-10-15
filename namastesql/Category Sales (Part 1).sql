Write an SQL query to retrieve the total sales amount for each product category in the month of February 2022,
 only including sales made on weekdays (Monday to Friday). Display the output in ascending order of total sales.


Tables: sales
+-------------+-------------+
| COLUMN_NAME | DATA_TYPE   |
+-------------+-------------+
| id          | int         |
| product_id  | int         |
| category    | varchar(12) |
| amount      | int         |
| order_date  | date        |
+-------------+-------------+
output=
category   | total_sales 
-------------+-------------
 Books       |         400
 Clothing    |         500
 Electronics |        2000
  
  code=
  
  SELECT
    category,SUM(amount) AS total_amount
FROM sales
WHERE EXTRACT(YEAR FROM order_date) = 2022
  AND EXTRACT(MONTH FROM order_date) = 2
  AND EXTRACT(DOW FROM order_date) BETWEEN 1 AND 5
GROUP BY category
ORDER BY total_amount ASC;



 
