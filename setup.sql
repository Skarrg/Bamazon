DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

/* Product Table Creation*/
CREATE TABLE products(
id INT NOT NULL AUTO_INCREMENT,
product VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NULL,
    quantity INT NULL,
    PRIMARY KEY (id)

);

/* Populate products with example data */
INSERT INTO products (product, department, price, quantity) VALUES ("Oranges - Single", "Produce", .59, 750);
INSERT INTO products (product, department, price, quantity) VALUES ("Milk - Pint", "Dairy", 2.99, 100);
INSERT INTO products (product, department, price, quantity) VALUES ("Banana - Bunch", "Produce", 1.59, 300);
INSERT INTO products (product, department, price, quantity) VALUES ("Hummus - Garlic", "Refrigerated", 3.59, 75);
INSERT INTO products (product, department, price, quantity) VALUES ("Frozen Pizza - Pepperoni", "Frozen", 5.59, 90);