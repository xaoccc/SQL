CREATE table `people`(
	`id` INT(5) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(200) NOT NULL,
    `picture` BLOB,
    `height` DOUBLE(10,2),
    `weight` DOUBLE(10,2),
    `gender` CHAR(1) NOT NULL,
    `birthdate` DATE NOT NULL,
    `biography` TEXT 
);

INSERT INTO `people` (`name`, `gender`, `birthdate`)
VALUES('Pesho', 'm', DATE(NOW())),
	('Ivan', 'm', DATE(NOW())),
	('Ganka', 'f', DATE(NOW())),
	('Stanka', 'f', DATE(NOW())),
	('Canka', 'f', DATE(NOW()));
