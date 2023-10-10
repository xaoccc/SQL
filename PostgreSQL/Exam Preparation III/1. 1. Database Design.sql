CREATE TABLE IF NOT EXISTS categories(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS addresses(
	id SERIAL PRIMARY KEY,
	street_name VARCHAR(100) NOT NULL,
	street_number INT CHECK(street_number>0) NOT NULL,
	town VARCHAR(30) NOT NULL,
	country VARCHAR(50) NOT NULL,
	zip_code INT CHECK(street_number>0) NOT NULL
);
CREATE TABLE IF NOT EXISTS publishers(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NILL,
	address_id INT NOT NULL,
	website VARCHAR(40),
	phone VARCHAR(20),
	
	CONSTRAINT fk_publishers_addresses 
	FOREIGN KEY (address_id)
	REFERENCES addresses(id)
);
CREATE TABLE IF NOT EXISTS players_ranges(
	id SERIAL PRIMARY KEY,
	min_players INT NOT NULL CHECK(min_players>0),
	max_players INT NOT NULL CHECK(max_players>0)
);
CREATE TABLE IF NOT EXISTS creators(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS board_games(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	release_year INT NOT NULL CHECK(release_year>0),
	rating NUMERIC(1,2) NOT NULL,
	category_id INT NOT NULL,
	publisher_id INT NOT NULL,
	players_range_id INT NOT NULL,
	
	CONSTRAINT fk_board_games_categories
	FOREIGN KEY (category_id)
	REFERENCES categories(id),
	
	CONSTRAINT fk_board_games_publishers
	FOREIGN KEY (publisher_id)
	REFERENCES publishers(id),
	
	CONSTRAINT fk_board_games_players_ranges
	FOREIGN KEY (players_range_id)
	REFERENCES players_ranges(id)
	
);
CREATE TABLE IF NOT EXISTS creators_board_games(
	creator_id INT NOT NULL,
	board_game_id INT NOT NULL,	
	PRIMARY KEY(creator_id, board_game_id)
);


