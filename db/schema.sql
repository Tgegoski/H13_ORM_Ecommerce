DROP DATABASE IF EXISTS ecommerce_db;

CREATE DATABASE ecommerce_db;

USE ecommerce_DB;

CREATE TABLE category(
    id INT AUTO_INCREMENT NOT NULL,
    category_name STRING(30) NOT NULL,
    PRIMARY KEY (id) 
);

CREATE TABLE product(
    id INT AUTO_INCREMENT NOT NULL,
    product_name STRING(30) NOT NULL,
    price DECIMAL UNSIGNED NOT NULL, 
    stock INT(10) NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tag(
    id INT AUTO_INCREMENT NOT NULL,
    tag_name STRING,
    PRIMARY KEY (id)
);

CREATE TABLE productTag(
    id INT AUTO_INCREMENT NOT NULL,
    product_id INT,
    tag_id INT,
    PRIMARY KEY (id)
);