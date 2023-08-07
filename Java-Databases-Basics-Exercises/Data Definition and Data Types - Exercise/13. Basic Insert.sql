CREATE DATABASE `soft_uni`;
USE `soft_uni`;

CREATE TABLE `towns` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
    );
    
CREATE TABLE `addresses` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `address_text` VARCHAR(50),
    `town_id` INT NOT NULL,
    CONSTRAINT `fk_addresses_towns`
    FOREIGN KEY `adresses`(`town_id`) REFERENCES `towns`(`id`)
    );

CREATE TABLE `departments` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
    );
    
CREATE TABLE `employees` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(50),
    `middle_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `job_title` VARCHAR(50),
    `department_id` INT NOT NULL,
    `hire_date` DATETIME,
    `salary` DOUBLE,
    `address_id` INT NOT NULL,
    CONSTRAINT fk_employees_departments
    FOREIGN KEY `employees`(`department_id`) REFERENCES `departments`(`id`),
	CONSTRAINT fk_employees_addresses
    FOREIGN KEY `employees`(`address_id`) REFERENCES `addresses`(`id`)
    );
