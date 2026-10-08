

-- returning usually returns back the rows immediately after insert and update

INSERT INTO products(name, category , price , stock , sku , description)
VALUES ('webcam camera', 'electronic', 456.67,57,'WEB-CAM-100','webcam camera description')
RETURNING id , name , category ,price, stock , created_at;