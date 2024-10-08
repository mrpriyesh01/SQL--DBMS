Write a SQL query to calculate the new salary for each employee based on the following criteria:

Increase the salary by 10% for employees with a salary below 60,000.
Increase the salary by 5% for employees with a salary between 60,000 and 70,000 (inclusive).
Increase the salary by 3% for employees with a salary above 70,000.

employee_id        	first_name	last_name	department	salary	hire_date
1	                   John	       Doe     	Sales	     55000	2021-01-15
2	                   Jane	      Smith    	HR	      60000	  2020-03-22
3	                   Alice	    Johnson  	Sales   	70000	  2019-06-10
4	                   Bob	      Brown     	IT	   75000	   2022-07-05
5	                   Charlie  	Davis	     HR   	50000    	2021-09-30
6	                   Eve	     White	    IT	    65000	    2023-01-20


output
first_name  	last_name	    salary	  new_salary
John	           Doe	       55000	60500
Jane	          Smith	       60000	63000
Alice	         Johnson      	70000	73500
Bob	           Brown	       75000	77250
Charlie	       Davis	       50000	55000
Eve	          White	         65000	68250
  

code=
SELECT 
    first_name, 
    last_name, 
    salary,
    CASE 
        WHEN salary < 60000 THEN salary * 1.10
        WHEN salary BETWEEN 60000 AND 70000 THEN salary * 1.05
        WHEN salary > 70000 THEN salary * 1.03
    END AS new_salary
FROM 
    employees;

