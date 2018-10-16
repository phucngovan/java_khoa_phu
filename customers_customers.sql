CREATE TABLE customers.customers
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(40),
    address varchar(255),
    email varchar(255)
);
CREATE TABLE customers.orders
(
    orderid int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    staff varchar(50),
    customer_id int(11),
    CONSTRAINT orders_ibfk_1 FOREIGN KEY (customer_id) REFERENCES customers.customers (id)
);
CREATE INDEX customer_id ON customers.orders (customer_id);