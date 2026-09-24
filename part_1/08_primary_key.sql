-- It is a key to find the uniquely identify a rows
-- simply considered it as the Unique key


DROP TABLE IF EXISTS basics.sales; 

CREATE TABLE basics.sales(
    id SERIAL PRIMARY KeY, 
    title TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW() 
);


INSERT INTO basics.sales(title, price)
VALUES ('sale 1', 200),
('sale 2', 500);

-- SELECT * FROM basics.sales;
SELECT * FROM basics.sales WHERE ID = 2; 