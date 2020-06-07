# select all books published between 2004 and 2015
SELECT * FROM books WHERE released_year >= 2004 AND released_year <= 2015 ;

# use between operator
SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015 ;

# use NOT between operator
SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ;

# cast() function
SELECT CAST('2020-05-10' AS DATETIME) ;