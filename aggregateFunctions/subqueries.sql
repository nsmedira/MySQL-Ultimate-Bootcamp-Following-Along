SELECT * FROM books
WHERE pages = (
    SELECT MIN(pages)
    FROM books
) ;

#slower way, multiple queries
SELECT title, author_fname, author_lname
FROM books
WHERE released_year = (
    SELECT MAX(released_year)
    FROM books
) ;

#faster way, one query
SELECT title, author_fname, author_lname
FROM books
ORDER BY released_year DESC
LIMIT 1 ;