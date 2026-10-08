

-- Foreign keys is a column that points to the primary key of another table

-- users.id -> primary key
-- posts.user_id -> foreign key
-- every post u will create that must belongs to an existing users

SELECT id , name 
FROM users;

SELECT id , user_id , title
FROM posts;

