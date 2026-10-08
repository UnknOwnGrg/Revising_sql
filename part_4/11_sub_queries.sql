

-- running one query inside another query

-- runs the inner query first
-- run the outer query

-- TASK 
-- which posts are performing better than average

SELECT title , status , views
FROM posts
WHERE views > (
    SELECT AVG(views)
    FROM posts
) -- it will check whether the views is greater than 20 or not
ORDER BY views DESC;