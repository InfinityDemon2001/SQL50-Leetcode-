SELECT e.name, b.bonus 
FROM Employee e
JOIN Bonus b 
ON e.empID = b.empID 
WHERE bonus < 1000 OR Bonus IS NULL;