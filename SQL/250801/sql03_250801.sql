CREATE DATABASE membership;
USE membership;
CREATE TABLE memberinfo (
	num INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    name VARCHAR(20) NOT NULL,
    email VARCHAR(60) NOT NULL,
    DOB VARCHAR(30) NOT NULL,
    date VARCHAR(30),
    point INT,
    gender VARCHAR(10) 
);

DESC memberinfo;
INSERT INTO memberinfo (name, email, DOB, date, point, gender)
VALUES 
("채은성", "shine@gmail.com", "1990-02-06", "2025-08-01", 800, "남"),
("노시환", "homerun@naver.com", "2000-12-03", "2025-04-23", 1000, "남"),
("박사빈", "sa050764@naver.com", "1998-05-07", "2023-05-25", 1200, "여");

SELECT * FROM memberinfo;
SELECT * FROM memberinfo WHERE point >= 1000;

UPDATE memberinfo SET email = "shine@google.com" WHERE num = 1;
SELECT * FROM memberinfo WHERE email LIKE "%google.com%";