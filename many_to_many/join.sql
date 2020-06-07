SELECT services.name, serviceRates.id AS 'service rate id'
FROM services
JOIN serviceRates
    ON services.id = serviceRates.id_service ;

UPDATE serviceRates SET id_rate = 1 WHERE id IN (1, 2, 3) ;
UPDATE serviceRates SET id_rate = 2 WHERE id = 4 ;
UPDATE serviceRates SET id_rate = 5 WHERE id IN (5, 9) ;
UPDATE serviceRates SET id_rate = 3 WHERE id IN (6, 7) ;
UPDATE serviceRates SET id_rate = 4 WHERE id = 8 ;

SELECT services.name, rates.charge, rates.unit_charge, rates.expense, rates.unit_expense
FROM serviceRates
JOIN services ON serviceRates.id_service = services.id
JOIN rates ON serviceRates.id_rate = rates.id ;

SELECT 
    services.name AS 'service name', 
    rates.name AS 'rate name', 
    AVG(rates.charge), 
    rates.unit_charge
FROM serviceRates
JOIN services 
    ON serviceRates.id_service = services.id
JOIN rates 
    ON serviceRates.id_rate = rates.id
GROUP BY services.name, rates.unit_charge
ORDER BY AVG(rates.charge);

INSERT INTO services (name) VALUES ('photography'), ('videography') ;

SELECT services.name AS 'services without rates', serviceRates.id_service
FROM serviceRates
RIGHT JOIN services
    ON serviceRates.id_service = services.id
WHERE id_service IS NULL;

SELECT 
    CONCAT(
        services.category,
        ', ',
        rates.unit_charge
    ) AS 'category', 
    ROUND(AVG(rates.charge), 2) AS 'average charge'
FROM serviceRates
INNER JOIN services
    ON services.id = serviceRates.id_service
INNER JOIN rates
    ON rates.id = serviceRates.id_rate
GROUP BY services.category, rates.unit_charge ;

SELECT
    services.name, 
    services.category, 
    COUNT(*) AS 'COUNT', 
    MIN(rates.charge) AS 'MIN', 
    MAX(rates.charge) AS 'MAX', 
    AVG(rates.charge) AS 'AVG',
    CASE
        WHEN COUNT(*) = 0 THEN 'INACTIVE'
        ELSE 'ACTIVE'
    END AS 'STATUS'
FROM serviceRates
RIGHT JOIN services
    ON serviceRates.id_service = services.id
JOIN rates
    ON serviceRates.id_rate = rates.id
GROUP BY services.id ;

SELECT
    services.name, 
    services.category, 
    COUNT(serviceRates.id) AS 'COUNT', 
    IFNULL(MIN(rates.charge), 0) AS 'MIN', 
    IFNULL(MAX(rates.charge), 0) AS 'MAX', 
    IFNULL(AVG(rates.charge), 0) AS 'AVERAGE',
    
    # CAN REPLACE 'CASE' FUNCTION WITH 'IF'
    # CASE
    #     WHEN COUNT(serviceRates.id) = 0 THEN 'INACTIVE'
    #     ELSE 'ACTIVE'
    # END AS 'STATUS'
    IF(COUNT(serviceRates.id) = 0, 'INACTIVE', 'ACTIVE') AS 'STATUS'
    
FROM services
LEFT JOIN serviceRates
    ON serviceRates.id_service = services.id
LEFT JOIN rates
    ON serviceRates.id_rate = rates.id
GROUP BY services.id
ORDER BY AVERAGE DESC;

