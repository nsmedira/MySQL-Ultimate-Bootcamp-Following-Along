SELECT SUM(pages) FROM books;

SELECT SUM(released_year) FROM books ;

SELECT 
    CONCAT(
        author_fname,
        ' ',
        author_lname
    ) AS 'author',
    SUM(pages) AS 'total pages'
FROM books 
GROUP BY author_fname, author_lname ;