SELECT title, author_lname FROM books GROUP BY author_lname ;

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname ;

SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname ;

SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_fname, author_lname ;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year ORDER BY COUNT(*) DESC, released_year DESC ;

SELECT
    CONCAT(
        'In ',
        released_year,
        ', ',
        COUNT(*),
        ' books were released.'
    ) AS 'message'
FROM books
GROUP BY released_year
ORDER BY COUNT(*) DESC, released_year DESC ;