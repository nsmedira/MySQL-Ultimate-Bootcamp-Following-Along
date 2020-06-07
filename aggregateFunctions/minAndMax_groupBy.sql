# find the year each author published their first book
SELECT
    CONCAT(
        author_fname,
        ' ',
        author_lname
    ) AS 'Author Name',
    MIN(released_year)
FROM books
GROUP BY author_fname, author_lname ;

# find the longest page count for each author
SELECT
    CONCAT(
        author_fname,
        ' ',
        author_lname
    ) AS 'Author Name',
    MAX(pages)
FROM books
GROUP BY author_fname, author_lname ;