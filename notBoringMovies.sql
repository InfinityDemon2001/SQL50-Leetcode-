SELECT id, movie, description, rating
FROM Cinema
WHERE description != 'boring' 
AND id & 1
ORDER BY rating DESC;