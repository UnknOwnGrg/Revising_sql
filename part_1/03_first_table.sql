
DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students(
    -- create an auto incremental integer
    -- 1,2,3,4,5,.......
    -- primary key simply means this col uniquelty identifies each

    id SERIAL PRIMARY KEY,

    -- text - string data
    -- not null means this col is required
    -- postgres is going to rejct if this name value is not present
    name TEXT NOT NULL,

    -- unique means -no 2 students have same email
    email TEXT NOT NULL UNIQUE,
    
    age INTEGER CHECK (age >= 18), 

    -- TIMESTAMP -> stores date 
    created_at TIMESTAMP DEFAULT NOW()
)


-- insert some data
INSERT INTO basics.students(name , email , age)
VALUES ('Ishak', 'ishak@gmail.com',20),
('Daliya', 'daliya@gmail.com', 19)