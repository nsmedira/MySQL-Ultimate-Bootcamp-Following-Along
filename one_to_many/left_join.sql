SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
    ON customers.id = orders.id_customer
ORDER BY amount;

SELECT first_name, last_name, order_date, SUM(amount) AS 'total'
FROM customers
JOIN orders
    ON customers.id = orders.id_customer
GROUP BY orders.id_customer
ORDER BY total DESC
LIMIT 1;

# LEFT JOIN
SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.id_customer;
    
# LEFT JOIN
SELECT 
    first_name,
    last_name,
    order_date,
    amount
FROM customers
LEFT JOIN orders
    ON customers.id = orders.id_customer;
    
# LEFT JOIN
SELECT 
    first_name,
    last_name,
    SUM(amount) AS 'total'
FROM customers
LEFT JOIN orders
    ON customers.id = orders.id_customer
GROUP BY customers.id;

# LEFT JOIN
SELECT 
    first_name,
    last_name,
    IFNULL(SUM(amount), 0) AS 'total'
FROM customers
LEFT JOIN orders
    ON customers.id = orders.id_customer
GROUP BY customers.id
ORDER BY total;