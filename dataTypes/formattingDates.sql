SELECT name, date_founding FROM contacts ;

SELECT name, DAY(date_founding) FROM contacts ;

SELECT name, date_founding, DAY(date_founding) FROM contacts ;

SELECT name, date_founding, DAYNAME(date_founding) FROM contacts ;

SELECT name, date_founding, DAYOFWEEK(date_founding) FROM contacts ;

SELECT name, date_founding, DAYOFYEAR(date_founding) FROM contacts ;

# DAYOFYEAR doesn't work on time but does work on DATETIME
SELECT name, date_founding, DAYOFYEAR(time_businessHoursBegin) FROM contacts ;

SELECT name, date_founding, DAYOFYEAR(timestamp_lastTouch) FROM contacts ;

SELECT name, date_founding, MONTH(timestamp_lastTouch) FROM contacts ;

SELECT name, date_founding, MONTHNAME(timestamp_lastTouch) FROM contacts ;

SELECT name, date_founding, HOUR(time_businessHoursBegin) FROM contacts ;

SELECT name, date_founding, MINUTE(time_businessHoursBegin) FROM contacts ;

SELECT 
    CONCAT(
        MONTHNAME(date_founding), 
        ' ', 
        DAY(date_founding), 
        ' ', 
        YEAR(date_founding)
    ) AS 'full date'
FROM contacts;

SELECT DATE_FORMAT(timestamp_lastTouch, 'Was founded on a %W') FROM contacts;

SELECT DATE_FORMAT(timestamp_lastTouch, '%m/%d/%Y') FROM contacts;

SELECT DATE_FORMAT(timestamp_lastTouch, '%m/%d/%Y at %h:%i') FROM contacts;