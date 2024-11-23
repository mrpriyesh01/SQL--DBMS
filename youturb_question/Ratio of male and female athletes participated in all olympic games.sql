10. Find the Ratio of male and female athletes participated in all olympic games.
Write a SQL query to get the ratio of male and female participants


code=
WITH t1 AS (
    SELECT COUNT(sex) AS male
    FROM olympics
    WHERE sex = 'M'
), 
t2 AS (
    SELECT COUNT(sex) AS female
    FROM olympics
    WHERE sex = 'F'
)
SELECT t1.male / t2.female AS ratio_of_sex
FROM t1
CROSS JOIN t2;


