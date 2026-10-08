


-- Simply it is use to sort data

-- SELECT name , price 
-- FROM products
-- ORDER BY name ASC; 



-- SELECT name , price 
-- FROM products
-- ORDER BY name DESC; 

-- If you want to do differently sorting in cols
SELECT name , category , price
FROM products
ORDER BY category ASC, price DESC , name  ASC;