# select all titles that contain stories
SELECT title FROM books WHERE title LIKE '%stories%' ;

# find the longest book by page count
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1 ;

SELECT
    CONCAT_WS(
        ' - ', 
        title,
        released_year
    ) AS 'summary'
FROM books
ORDER BY released_year DESC
LIMIT 3 ;

# find all books with an author_lname that contains a space 
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %' ;

# find the 3 books with the lowest number in stock 
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3 ;

# print title and author_lname, sorted first by author_lname and then by title 
SELECT title, author_lname FROM books ORDER BY author_lname, title ;

SELECT
    UPPER (
        CONCAT(
            'my favorite author is ',
            author_fname,
            ' ',
            author_lname,
            '!'
        )
    ) AS 'yell'
FROM books 
ORDER BY author_lname ;