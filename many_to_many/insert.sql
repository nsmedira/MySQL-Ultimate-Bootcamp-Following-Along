INSERT INTO services (name, category, year_firstOffered)
VALUES
    ('research', 'creative', '2020'),
    ('creative concepting', 'creative', '2015'),
    ('outline', 'creative', '2010'),
    ('location scouting (remotely, by producer)', 'pre-production', '2020'), 
    ('location tech scout', 'pre-production', '2015'),
    ('casting director', 'pre-production', '2005'),
    ('direction', 'video production', '2019'),
    ('grip', 'video production', '2008'),
    ('drone operator', 'video production', '2001') ;

ALTER TABLE services
MODIFY year_firstOffered YEAR(4) ;

INSERT INTO rates (name, charge, unit_charge, expense, unit_expense)
VALUES
    ('creative', 100.00, 'hour', 25.00, 'hour' ),
    ('producer', 300.00, 'hour', 150.00, 'hour' ),
    ('director', 250.00, 'hour', 125.00, 'hour' ),
    ('grip', 100.00, 'each', 25.00, 'each' ),
    ('day laborer, 8 hours', 500.00, 'day', 250.00, 'day' ) ;
    
ALTER TABLE rates
ADD unit_charge VARCHAR(15) ;

ALTER TABLE rates
ADD unit_expense VARCHAR(15) ;

INSERT INTO serviceRates (id_)