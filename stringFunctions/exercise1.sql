SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'));

SELECT 
    REPLACE(title, ' ', '->') AS 'Title'
FROM books ;

SELECT
    author_lname AS 'Forwards',
    REVERSE(author_lname) AS 'Backwards'
FROM books ;

SELECT
    UPPER(
        CONCAT(
            author_fname,
            ' ',
            author_lname
        )
    ) AS 'Full Name'
FROM books ;

SELECT
    CONCAT(
        title,
        ' was released in ',
        released_year,
        '.'
    ) AS 'blurb'
FROM books;

SELECT
    title,
    CHAR_LENGTH(title) AS 'Length of title'
FROM books;

SELECT
    CONCAT(
        SUBSTRING(
            title,
            1,
            10
        ),
        '...'
    ) AS 'Short Title',
    CONCAT(
        author_lname,
        ',',
        author_fname
    ) AS 'Author',
    CONCAT(
        stock_quantity,
        ' in stock.'
    ) AS 'Quantity'
FROM books ;