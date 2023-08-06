CREATE TABLE `categories` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL,
    daily_rate FLOAT NOT NULL,
    weekly_rate FLOAT NOT NULL,
    monthly_rate FLOAT NOT NULL,
    weekend_rate FLOAT NOT NULL);

CREATE TABLE `categories` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(50),
    daily_rate DOUBLE,
    weekly_rate DOUBLE,
    monthly_rate DOUBLE,
    weekend_rate DOUBLE);

INSERT INTO `categories` (category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
VALUES ("small car", 50.5, 500.5, 1500.5, 70.5),
	("big car", 60.5, 600.5, 2600.5, 80.5),
    ("very small car", 30.5, 300.5, 500.5, 50.5);

CREATE TABLE `cars` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    plate_number VARCHAR(10),
    make VARCHAR(50),
    model VARCHAR(50),
    car_year YEAR,
    category_id INT,
    doors INT,
    picture BLOB,
    car_condition TEXT,
	available BOOLEAN
    );

INSERT INTO `cars` (make, model, category_id)
VALUES ("Skoda", "Rapid", 1),
	("Skoda", "Octavia", 2),
	("Skoda", "Moda", 3);

CREATE TABLE `employees` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    title VARCHAR(10),
    notes TEXT);

INSERT INTO `employees` (first_name, last_name)
VALUES ("Ivan", "Ivanov"),
	("Peter", "Petrov"),
	("Sasho", "Sashov");

CREATE TABLE `customers` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    driver_licence_number VARCHAR(50),
    full_name VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(30),
    zip_code INT,
    notes TEXT);

INSERT INTO `customers` (driver_licence_number, full_name, address, city)
VALUES (12345678, "Ivan Ivanov", "Borova gora 5", "Sofia"),
	(23456789, "Peter Petrov", "Borova gora 7", "Sofia"),
    (32749289, "Sasho Sashov", "Borova gora 9", "Sofia");

CREATE TABLE `rental_orders` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    customer_id INT,
    car_id INT,
    car_condition VARCHAR(100),
    tank_level INT,
	kilometrage_start INT,
    kilometrage_end INT,
    total_kilometrage INT,
    start_date DATETIME,
    end_date DATETIME,
	total_days INT,
    rate_applied DOUBLE,
    tax_rate DOUBLE,
    order_status BOOLEAN,
    notes TEXT);

INSERT INTO `rental_orders` (employee_id, customer_id, car_id, order_status)
VALUES ( 1, 1, 1, true),
	( 2, 2, 2, true),
	( 3, 3, 3, true);