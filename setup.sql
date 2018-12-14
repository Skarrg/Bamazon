DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

/* Product Table Creation*/
CREATE TABLE products(
  item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INTEGER(3) NOT NULL,
  PRIMARY KEY (item_id)
);

/* Populate products with example data */
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Oranges - Single", "Produce", .59, 750);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Milk - Pint", "Dairy", 2.99, 100);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Banana - Bunch", "Produce", 1.59, 300);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Hummus - Garlic", "Refrigerated", 3.59, 75);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Frozen Pizza - Pepperoni", "Frozen", 5.59, 90);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Soda - Pepsi 6pack", "Drinks", 1.59, 750);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Potatoes - 1lb", "Produce", .89, 550);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Cheese - Cheddar 1/4lb", "Dairy", 2.00, 250);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Soda - Coca Cola 6pack", "Drinks", 1.59, 750);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Sushi - California Roll", "Refrigerated", 7.59, 10);