SELECT p.product_name, sum(o.unit) AS unit
FROM Products p
LEFT JOIN Orders o
ON p.product_id = o.product_id
WHERE extract(YEAR_MONTH FROM o.order_date) = 202002
GROUP BY o.product_id
HAVING sum(o.unit) >= 100;