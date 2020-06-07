SELECT
    title,
    CONCAT(
        author_fname,
        ' ',
        author_lname
    ) AS 'author',
    released_year
FROM books
WHERE
    author_fname = 'dave'
    && author_lname = 'eggers'
    && released_year > 2010 ;
    
SELECT * FROM books WHERE author_fname = 'dave' AND author_lname = 'eggers' AND released_year > 2010 ;