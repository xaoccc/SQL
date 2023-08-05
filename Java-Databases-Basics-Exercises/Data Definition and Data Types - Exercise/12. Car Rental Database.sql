CREATE DATABASE `car_rental`;
USE `car_rental`;

CREATE TABLE `categories` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL,
    daily_rate FLOAT NOT NULL,
    weekly_rate FLOAT NOT NULL,
    monthly_rate FLOAT NOT NULL,
    weekend_rate FLOAT NOT NULL);

CREATE TABLE `cars` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number VARCHAR(10) NOT NULL,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year INT,
    category_id INT,
    doors INT,
    picture MEDIUMBLOB,
    car_condition TEXT,
	available BOOL);

CREATE TABLE `employees` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    title VARCHAR(20) NOT NULL,
    notes TEXT);


CREATE TABLE `customers` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    driver_licence_number VARCHAR(50) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    city VARCHAR(30) NOT NULL,
    zip_code INT NOT NULL,
    notes TEXT);

CREATE TABLE `rental_orders` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    car_condition VARCHAR(100),
    tank_level INT,
	kilometrage_start INT,
    kilometrage_end INT,
    total_kilometrage INT,
    start_date DATE,
	total_days INT,
    rate_applied FLOAT NOT NULL,
    tax_rate FLOAT NOT NULL,
    order_status BOOL NOT NULL,
    notes TEXT);

INSERT INTO `categories` (category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
VALUES ("small car", 50.5, 500.5, 1500.5, 70.5),
	("big car", 60.5, 600.5, 2600.5, 80.5),
    ("very small car", 30.5, 300.5, 500.5, 50.5);