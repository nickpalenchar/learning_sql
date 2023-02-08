
-- building blocks of Inner join
-- The following limits by hard-coded
-- department ids (this can be a more dynamic
-- innerjoin later 
SELECT
 first_name, last_name, department_id
FROM
  employees
WHERE
  department_id IN (1, 2, 3)
ORDER BY
  department_id;


-- the same idea above as an inner join

SELECT
 first_name, last_name, employees.department_id
FROM
 employees
INNER JOIN
 departments -- The foreign table
ON
 employees.department_id  = departments.department_id;

----- INNER JOIN 3 TABLES ------

SELECT
 first_name, last_name, job_title, department_name
FROM
  employees e -- create an alias "e"
INNER JOIN departments d ON d.department_id = e.department_id
INNER JOIN jobs j ON e.job_id = e.job_id
LIMIT 10;

