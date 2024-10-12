various products, including their names and prices. Write a SQL query to count number of products in each category
based on its price into three categories below. Display the output in descending order of no of products.
1- "Low Price" for products with a price less than 100
2- "Medium Price" for products with a price between 100 and 500 (inclusive)
3- "High Price" for products with a price greater than 500.

code=SELECT 
  CASE 
    WHEN price < 100 THEN 'Low Price'
    WHEN price BETWEEN 100 AND 500 THEN 'Medium Price'
    WHEN price > 500 THEN 'High Price'
  END AS category,
  COUNT(product_name) AS no_of_product
FROM products -- Add your table name here
GROUP BY category
order by COUNT(product_name) desc;
