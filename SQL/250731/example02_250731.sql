-- CREATE DATABASE Dave;
-- CREATE DATABASE IF NOT EXISTS > 만약을 위해
-- USE Dave;
/* CREATE TABLE customer (
	id INT NOT NULL AUTO_INCREMENT,
    name CHAR(50) NOT NULL,
    modelnumber VARCHAR(15) NOT NULL,
    series VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);*/

-- DESC mytable;

-- CREATE DATABASE IF NOT EXISTS Dave;
-- USE Dave;

-- CREATE TABLE mytable (
-- 	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--     name VARCHAR(50) NOT NULL,
--     modelnumber VARCHAR(15) NOT NULL,
--     series VARCHAR(30) NOT NULL,
--     PRIMARY KEY(id)
-- );

-- ALTER TABLE mytable MODIFY COLUMN name VARCHAR(20);
-- ALTER TABLE mytable CHANGE COLUMN modelnumber model_number VARCHAR(10);
-- ALTER TABLE mytable CHANGE series model_type VARCHAR(10);

-- DROP TABLE IF EXISTS mytable;
-- CREATE TABLE  model_info(
-- 	id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(20) NOT NULL,
--     model_num VARCHAR(10) NOT NULL,
--     model_type VARCHAR(10) NOT NULL,
--     PRIMARY KEY(id)
-- );

DESC model_info;