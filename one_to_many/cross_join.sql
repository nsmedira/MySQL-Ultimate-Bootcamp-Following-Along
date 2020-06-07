# find the ID for boy george as subquery
SELECT * FROM orders WHERE id_customer = (SELECT id FROM customers WHERE first_name = 'boy' AND last_name = 'george') ;

# cross/cartesian join. this is an implicit join
SELECT * FROM customers, orders ;