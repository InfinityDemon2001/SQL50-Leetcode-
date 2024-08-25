SELECT Department, Employee, Salary
FROM 
(SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary, dense_rank() OVER (PARTITION BY d.name ORDER BY e.salary DESC) AS ranks
FROM Employee e
LEFT JOIN Department d
ON e.departmentId = d.id) temp
WHERE ranks <= 3;