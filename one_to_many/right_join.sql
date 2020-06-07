# RIGHT JOIN
SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.id_customer;
    
# remove foreign key constraint from id_customer
# we didn't specify a constrain symbol, so we have to lookup the constrain symbol using SHOW CREATE TABLE orders
SHOW CREATE TABLE orders ;

# constrain symbol for the foreign key is orders_ibfk_1
ALTER TABLE orders
DROP FOREIGN KEY orders_ibfk_1;

# add the foreign key constraint back onto the id_customers field
ALTER TABLE orders
ADD FOREIGN KEY (id_customer) REFERENCES customers(id) ON DELETE CASCADE ;