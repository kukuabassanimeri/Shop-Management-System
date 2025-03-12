CREATE DATABASE shop_management;
USE shop_management; -- to select the database

-- PRODUCT TABLE
CREATE TABLE products(
product_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (100) NOT NULL,
category VARCHAR (50) NOT NULL,
price DECIMAL (10, 2) NOT NULL,
stock INT NOT NULL
);

-- CUSTOMER TABLE
CREATE TABLE customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (100) NOT NULL,
email VARCHAR (100) UNIQUE NOT NULL,
phone VARCHAR (15) NOT NULL
);

-- SALES TABLE
CREATE TABLE sales(
sale_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id int,
product_id INT,
quantity INT NOT NULL,
total_price DECIMAL (10, 2) NOT NULL,
sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id), -- customers is the customer table
FOREIGN KEY (product_id) REFERENCES products(product_id) -- products is the products table
);

-- USERS TABLE
CREATE TABLE users(
user_id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR (50) UNIQUE NOT NULL,
password VARCHAR (255) NOT NULL
);

-- CREATE USERS
INSERT INTO users(username, password)
VALUES ("cici", "cici@2025");