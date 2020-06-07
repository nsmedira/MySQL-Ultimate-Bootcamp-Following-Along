# select all books not published in 2017

# select all birthdays between 1990 and 1992

# select all items that are in stock and priced below 19.99

# select all books released in 2017
SELECT title, released_year FROM books WHERE released_year = 2017 ;

# select all books not released in 2017
SELECT title, released_year FROM books WHERE released_year != 2017 ;