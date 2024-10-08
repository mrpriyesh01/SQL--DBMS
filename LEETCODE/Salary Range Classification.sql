Write a query to classify employees based on their salary into categories: "Low", "Medium", and "High"

employee_id	            first_name	last_name	department	salary	hire_date
1	                         John	    Doe	       Sales	     55000	2021-01-15
2	                         Jane	    Smith     	HR	       60000	2020-03-22
3	                         Alice	  Johnson	   Sales	     70000	2019-06-10
4	                          Bob	     Brown	    IT	       75000	2022-07-05
5	                        Charlie	   Davis	    HR	       50000	2021-09-30
6	                         Eve	     White	    IT	       65000	2023-01-20

SELECT first_name, last_name,
       CASE 
           WHEN salary < 55000 THEN 'Low'
           WHEN salary BETWEEN 55000 AND 70000 THEN 'Medium'
           ELSE 'High'
       END AS salary_category
FROM employees;
