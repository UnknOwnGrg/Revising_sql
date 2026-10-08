

-- Null -> missing/unknown value
-- we shoudl not check null using = null
-- either do is null or not is not null

-- SELECT name, description 
-- FROM products
-- WHERE description IS NULL; 


-- SELECT name, description 
-- FROM products
-- WHERE description IS NOT NULL; 

SELECT name, category, is_active, description
FROM products
WHERE is_active = True AND description IS NULL;
