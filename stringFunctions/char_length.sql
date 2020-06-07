# SELECT
#     CHAR_LENGTH(title)
# FROM books ;

SELECT
    CONCAT(
        '\'',
        author_lname,
        '\' is ',
        CHAR_LENGTH(author_lname),
        ' characters in length.'
    )
AS 'String'
FROM books ;