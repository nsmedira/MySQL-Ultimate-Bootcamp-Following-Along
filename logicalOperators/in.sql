SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith') ;

SELECT title, author_lname FROM books WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith') ;

SELECT title, author_lname, released_year FROM books WHERE released_year > 2000 AND MOD(released_year, 2) != 0 ORDER BY released_year;