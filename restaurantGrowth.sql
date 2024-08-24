SELECT visited_on, 
(SELECT sum(amount) from Customer WHERE visited_on BETWEEN date_sub(c.visited_on, interval 6 day) AND c.visited_on) AS amount,
round((SELECT sum(amount) / 7 from Customer WHERE visited_on BETWEEN date_sub(c.visited_on, interval 6 day) AND c.visited_on), 2) AS average_amount
FROM Customer c
WHERE visited_on >= (SELECT date_add(min(visited_on), interval 6 day) FROM Customer)
GROUP BY visited_on
ORDER BY visited_on