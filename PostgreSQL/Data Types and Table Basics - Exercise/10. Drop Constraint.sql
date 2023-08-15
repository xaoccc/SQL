ALTER TABLE minions_info
DROP COLUMN equipped;

ALTER TABLE minions_info
ADD COLUMN equipped BOOL;