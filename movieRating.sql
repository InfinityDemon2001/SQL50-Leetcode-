(SELECT u.name AS results
FROM Users u
LEFT JOIN MovieRating mr
ON u.user_id = mr.user_id
GROUP BY u.user_id
ORDER BY count(mr.user_id) DESC, u.name
LIMIT 1)
UNION ALL
(SELECT title AS results
FROM Movies m
LEFT JOIN MovieRating mr
ON m.movie_id = mr.movie_id
WHERE extract(YEAR_MONTH FROM created_at) = 202002
GROUP BY m.movie_id
ORDER BY avg(mr.rating) DESC, m.title
LIMIT 1);