/*
SELECT 
    CONCAT (
    
        author_lname,
        ', ',
        author_fname
    
    )
AS 'Full Name'
FROM books ;
*/

/*
SELECT
    author_fname AS 'First',
    author_lname AS 'Last',
    CONCAT (
        author_fname,
        ' ',
        author_lname
    ) AS 'Full Name'
FROM books ;
*/

SELECT 
    CONCAT_WS (
        ' - ', 
        title, 
        author_fname, 
        author_lname
    )
FROM books ;
