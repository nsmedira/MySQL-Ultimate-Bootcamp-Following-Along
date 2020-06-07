SELECT 
    title, 
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS 'ERA'
FROM books;

SELECT
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity < 50 THEN '*'
        WHEN stock_quantity < 100 THEN '**'
        WHEN stock_quantity >= 100 THEN '***'
        ELSE 'Stock_quantity value is empty'
    END AS 'stock level'
FROM books;