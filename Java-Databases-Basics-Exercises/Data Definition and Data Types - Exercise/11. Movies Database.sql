CREATE TABLE `directors` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(30) NOT NULL,
    notes TEXT) ;

CREATE TABLE `genres` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(30) NOT NULL,
    notes TEXT) ;

CREATE TABLE `categories` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(30) NOT NULL,
    notes TEXT) ;

CREATE TABLE `movies` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    director_id INT,
    copyright_year year,
    length year,
    genre_id INT,
    category_id INT,
    rating INT,
    notes TEXT) ;
    

INSERT INTO `directors` (`id`, `director_name`)
VALUES(1, 'Hichkok'),
    (2, 'Asdasd'),
    (3, 'Sassd'),
    (4, 'George Bush'),
    (5, 'Ivancho');

INSERT INTO `genres` (`id`, `genre_name`)
VALUES(1, 'action'),
    (2, 'horror'),
    (3, 'comedy'),
    (4, 'thriller'),
    (5, 'sci-fi');

INSERT INTO `categories` (`id`, `category_name`)
VALUES(1, 'adult'),
    (2, '18+'),
    (3, '14'),
    (4, '16+'),
    (5, 'kakvisateqglupostiwe');

INSERT INTO `movies` (`id`, `title`)
VALUES(1, 'Ebasi tapiq film'),
    (2, 'Smart s SQL'),
    (3, 'Umirai tablichno'),
    (4, 'Bazi danni 6'),
    (5, 'Golqmoto garmene v judje 3');
