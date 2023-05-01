CREATE TABLE `users` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(30) NOT NULL,
    `password` VARCHAR(26) NOT NULL,
    `profile_picture` MEDIUMBLOB,
    `last_login_time` TIME,
    `is_deleted` BOOL
);

INSERT INTO `users` (`id`, `username`, `password`)
VALUES(1, 'Pesho', '12345'),
(2, 'Gosho', 'iajlaina'),
(3, 'Sasho', 'asdasd'),
(4, 'Ivan', 'mnogoslojnaparola'),
(5, 'Stanka', 'lapampishki');