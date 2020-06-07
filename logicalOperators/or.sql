# using 'OR' operator
SELECT title, author_lname, released_year FROM books WHERE author_lname = 'eggers' OR released_year > 2010; 

# using '||' operator (OR)
SELECT title, author_lname, released_year FROM books WHERE author_lname = 'eggers' || released_year > 2010; 