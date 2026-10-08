
-- inner join returns the matching rows from the both tables

SELECT users.name as author_name, 
    posts.title as post_title,
    posts.status , 
    posts.views
FROM posts
INNER JOIN users 
ON posts.user_id = users.id
WHERE status = 'published'
ORDER BY views DESC; 

