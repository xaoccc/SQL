ALTER TABLE minions 
	ADD COLUMN `town_id` INT(5) NOT NULL,
    ADD CONSTRAINT `town_change`
    FOREIGN KEY(`town_id`) REFERENCES `towns`(`id`);
