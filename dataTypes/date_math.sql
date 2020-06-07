SELECT DATEDIFF(CURDATE(), date_founding) FROM contacts ;

SELECT timestamp_lastTouch, DATE_ADD(timestamp_lastTouch, INTERVAL 1 MONTH) FROM contacts;

SELECT timestamp_lastTouch, timestamp_lastTouch + INTERVAL 1 MONTH FROM contacts ;

SELECT timestamp_lastTouch, timestamp_lastTouch + INTERVAL 5 MONTH + INTERVAL 7 MINUTE FROM contacts ;