# with wildcard preceding 'da'
# SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%' ;    

# without wildcard preceding 'da'ALTER
# SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%' ;

# SELECT title, author_fname FROM books WHERE title LIKE 'the%' ; 

# underscores represent a single character wildcard
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '___' ;

SELECT title FROM books WHERE title LIKE '%\%%' ;

SELECT title FROM books WHERE title LIKE '%\_%' ;