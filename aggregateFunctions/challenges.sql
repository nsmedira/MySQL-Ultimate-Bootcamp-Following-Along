# count the number of books in the database
SELECT COUNT(*) FROM books ;

# print out the number of books released each year
SELECT 
	released_year, 
	COUNT(*) AS 'number of books released'
FROM books 
GROUP BY released_year 
ORDER BY released_year DESC;

# print out the total number of books in stock
SELECT SUM(stock_quantity) FROM books ;

# find the average released year for each author
SELECT
	CONCAT (
		author_fname,
		' ',
		author_lname
	) AS 'author',
	AVG(released_year)
FROM books
GROUP BY author_fname, author_lname 
ORDER BY author_fname, author_lname ;

# find the full name of the author who wrote the longest book
SELECT
	CONCAT(
		author_fname,
		' ',
		author_lname
	) AS 'author',
	pages
FROM books
ORDER BY pages DESC
LIMIT 1 ;

SELECT
	released_year AS 'year',
	COUNT(*) AS '# books',
	AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year 
ORDER BY released_year ASC;