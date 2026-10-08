

-- index helps postgres finds rows faster

-- idx -> id or index
-- posts -> table name
-- status -> column name

CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);

SELECT title, status , views
FROM posts
WHERE status = 'published'
ORDER BY views DESC;

-- it will be the composite index

CREATE INDEX IF NOT EXISTS idx_posts_status_views
ON posts(status, views DESC);

-- /users/:id/posts
SELECT title, status , views
FROM posts
WHERE user_id = (
    SELECT id 
    FROM users
    WHERE name = 'rahul'
)

CREATE INDEX IF NOT EXISTS idx_posts_user_id
ON posts(user_id);