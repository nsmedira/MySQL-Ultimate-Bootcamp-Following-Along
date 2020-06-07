/*
SELECT REPLACE
    ( 
        author_fname,
        'a', 
        'i'
    )
AS 'I Replacement'
FROM books ;
*/

# SELECT
#     REPLACE (title, 'e', '3') AS '3 Replacement'
# FROM books 
# WHERE author_lname = 'foster wallace' ;

SELECT
    SUBSTRING(
        REPLACE(
            title,
            'e',
            '3'
        ), 
        1, 
        10
    )
AS 'First 10 Letters'
FROM books ;