ALTER TABLE contacts
ADD state CHAR(2) ;

CREATE TABLE inventory (
    item_name VARCHAR(50),
    price DECIMAL(8,2),
    quantity INT
)

# DATETIME and TIMESTAMP are both a combination of a DATE and a TIME value, but for TIMESTAMP, the date cannot be before 1970-something and the date cannot be after 2038; DATETIME takes about 2x the memory as TIMESTAMP

# print the current time
SELECT CURTIME();

# print the current date
SELECT CURDATE();

# print the current day of the week (number)
SELECT DAYOFWEEK(CURDATE());

# print the current day of the week (name)
SELECT DAYNAME(CURDATE());

# print out the current day and time using this format:
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %l:%i');

ALTER TABLE tasks
ADD id_user INT;