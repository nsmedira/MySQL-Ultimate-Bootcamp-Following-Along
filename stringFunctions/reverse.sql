# SELECT 
#     REVERSE(author_fname)
# FROM books ;

# CREATE PALINDROME
SELECT
    CONCAT(
        author_fname,
        REVERSE(author_fname)
    )
AS 'Palindrome'
FROM books ;