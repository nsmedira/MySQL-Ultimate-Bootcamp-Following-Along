CREATE TABLE contacts (
    name VARCHAR(100),
    date_founding DATE,
    time_businessHoursBegin TIME,
    timestamp_lastTouch DATETIME
) ;

INSERT INTO contacts (name, date_founding,time_businessHoursBegin, timestamp_lastTouch)
VALUES
    ('Padma Studios', '1983-11-11', '08:00:00', '2020-05-09 17:49:59'),
    ('Larry the Cable Guy', '1943-12-25', '09:00:00', '2019-12-01 12:30:59');

INSERT INTO contacts (name, date_founding, time_businessHoursBegin, timestamp_lastTouch)
VALUES
    ('Ben Conlon', CURDATE(), CURTIME(), NOW()) ;
    
DELETE FROM contacts WHERE name = 'Padma Studios' ;

SELECT name, date_founding, DAYNAME(date_founding) FROM contacts ;

SELECT name, date_founding, DAYOFWEEK(date_founding) FROM contacts ;

SELECT name, date_founding, DAYOFYEAR(date_founding) FROM contacts ;