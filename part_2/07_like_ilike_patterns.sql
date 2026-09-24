-- like - case sensitive pattern match
-- ilike - case insensitive pattern match 
-- % means any no of chars
-- _ means one character

-- % after wireless means anything can come after it
-- SELECT name, price , description
-- FROM products
-- WHERE name LIKE 'Wireless%';


-- ilike -> case insensitive
-- SELECT name , category, price
-- FROM products
-- WHERE name ILIKE '%desk%';

SELECT name , category , price, description
FROM products
WHERE name ILIKE '%chair%'
    OR description ILIKE '%chair%'