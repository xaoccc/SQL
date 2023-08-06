CREATE TABLE `employees` (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
    );
CREATE TABLE `categories` (
	id INT primary key NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL
    );
CREATE TABLE `products` (
	id INT primary key NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
    category_id INT NOT NULL
    );
# with foreign key on the last column:

CREATE TABLE `employees` (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
    );
CREATE TABLE `categories` (
	id INT primary key NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL
    );
CREATE TABLE `products` (
	id INT primary key NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
    category_id INT, 
    FOREIGN KEY (category_id) REFERENCES categories(id)
    );
