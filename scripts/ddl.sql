-- MariaDB Script
-- Model: New Model    Version: 2.0

-- -----------------------------------------------------
-- Schema sample_db
-- -----------------------------------------------------

CREATE DATABASE Products

-- -----------------------------------------------------
-- Connect to the database
-- -----------------------------------------------------

USE Products;

-- -----------------------------------------------------
-- Creating tables
-- -----------------------------------------------------


CREATE TABLE Category (
  category_id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE Supplier (
  supplier_id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE Brand (
  brand_id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE Product (
  product_id INT PRIMARY KEY,
  name VARCHAR(100),
  price DECIMAL(10, 2),
  description VARCHAR(255),
  category_id INT,
  supplier_id INT,
  brand_id INT,
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
  FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);

CREATE TABLE Inventory (
  product_id INT PRIMARY KEY,
  quantity INT,
  brand_id INT,
  supplier_id INT,
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (brand_id) REFERENCES Brand(brand_id),
  FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);
