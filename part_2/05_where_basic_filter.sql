
-- filter 

-- SELECT name, category, price 
-- FROM products
-- WHERE category = 'electronics';

-- Task 
-- find products where the price > 1000 

-- SELECT * FROM products;

-- SELECT name, category, price , stock 
-- FROM products
-- WHERE price  >  1000;

-- find products which are not active
SELECT name, is_active
FROM products
WHERE is_active = FALSE;
