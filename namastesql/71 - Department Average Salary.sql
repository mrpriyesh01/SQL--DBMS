You are provided with two tables: Employees and Departments. The Employees table contains information about employees, including their IDs, names, salaries, and department IDs. The Departments table contains information about departments, including their IDs and names. Your task is to write a SQL query to find the average salary of employees in each department, but only include departments that have more than 2 employees . Display department name and average salary round to 2 decimal places. Sort the result by average salary in descending order.

 

Tables: Employees
+---------------+-------------+
| COLUMN_NAME   | DATA_TYPE   |
+---------------+-------------+
| employee_id   | int         |
| employee_name | varchar(20) |
| salary        | int         |
| department_id | int         |
+---------------+-------------+
Tables: Departments
+-----------------+-------------+
| COLUMN_NAME     | DATA_TYPE   |
+-----------------+-------------+
| department_id   | int         |
| department_name | varchar(10) |
+-----------------+-------------+
 

Hints
Expected Output
+-----------------+----------------+
| department_name | average_salary |
+-----------------+----------------+
| Finance         |       57000.00 |
| Sales           |       56200.00 |
+-----------------+----------------+

code=
SELECT 
    d.department_name, 
    ROUND(AVG(e.salary), 2) AS average_salary
FROM 
    Employees e
JOIN 
    Departments d ON d.department_id = e.department_id
GROUP BY 
    d.department_name
HAVING 
    COUNT(e.employee_id) > 2
ORDER BY 
    average_salary DESC;
