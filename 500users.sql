# FIND THE EARLIEST DATE A USER JOINED
SELECT email, DATE_FORMAT(timestamp_creation, '%M %D %Y') AS 'earliest_date'
FROM users
ORDER BY timestamp_creation
LIMIT 1 ;

# USERS WHO JOINED BY MONTH
SELECT MONTHNAME(timestamp_creation) AS month, COUNT(*) AS total
FROM users
GROUP BY month
ORDER BY total DESC ;

# FIND THE NUMBER OF EMAILS THAT END IN @YAHOO.COM
SELECT COUNT(*)
FROM users
WHERE email LIKE '%@yahoo.com' ;

# TOTAL NUMBER OF USERS FOR EACH EMAIL HOST
SELECT DISTINCT SUBSTRING(email, POSITION('@' IN email) + 1, LENGTH(email)) AS host, COUNT(*) as total
FROM users 
GROUP BY host 
ORDER BY total DESC ;