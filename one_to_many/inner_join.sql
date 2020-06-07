# implicit inner join, all fields
SELECT * FROM customers, orders WHERE customers.id = orders.id_customer ;

# implicit inner join, only the fields we want from the join
SELECT first_name, last_name, order_date, amount FROM customers, orders WHERE customers.id = orders.id_customer ;

# explicit inner join, all fields (more conventional)
SELECT * FROM customers
JOIN orders
    ON customers.id = orders.id_customer ;
    
# explicit inner join, only fields we want (more conventional)
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders
    ON customers.id = orders.id_customer ;