# select all titles that begin with 'w'
SELECT title FROM books WHERE title LIKE 'W%' ;

# select all titles that don't begin with 'w'
SELECT title FROM books WHERE title NOT LIKE 'W%' ;