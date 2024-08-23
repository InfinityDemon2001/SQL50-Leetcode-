SELECT max(num) AS num
FROM (SELECT num
FROM MyNumbers
GROUP BY num
HAVING count(num) = 1) AS new_table;