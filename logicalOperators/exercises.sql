# select all books written before 1980 (non inclusive)
SELECT * FROM books WHERE released_year < 1980 ;

# select all books written by eggers or chabon
SELECT * FROM books WHERE author_lname IN ('eggers', 'chabon') ;

# select all books written by lahiri after 2000
SELECT * FROM books WHERE author_lname = 'lahiri' AND released_year > 2000 ;

# select all books with page counts between 100 and 200
SELECT * FROM books WHERE pages BETWEEN 100 AND 200 ;

# select all books where author_lname starts with a 'C' or an 'S'
SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%' ;

SELECT
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' OR title LIKE 'a heartbreaking work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'TYPE'
FROM books ;

SELECT
    title,
    author_lname,
    CONCAT(
        COUNT(*),
        CASE
            WHEN COUNT(*) = 1 THEN ' book'
            ELSE ' books'
        END
    ) AS 'COUNT'
FROM books
GROUP BY author_lname, author_fname
ORDER BY author_lname ;