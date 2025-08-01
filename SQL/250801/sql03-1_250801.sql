CREATE DATABASE IF NOT EXISTS membershipp;
USE membershipp;


CREATE TABLE IF NOT EXISTS members (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE, #UNIQUE: 앞전에 들어왔던 값과 똑같은 값이 들어올 수 없게한다
    birth_Date DATE, #'0000-00-00'
    signup_time DATETIME DEFAULT CURRENT_TIMESTAMP,
	# 'YYYY-MM-DD HH:MM:SS', 현 시점을 디폴드값으로 받음
    points DECIMAL(10, 2),
    gender ENUM('남', '여') NOT NULL
);
# "" > string, 문자열로 인식
# '' > character 단순 문자를 의미
DESC members;

INSERT INTO members(name, email, birth_Date, points, gender)
VALUES
('마동석', 'dong@google.com', '1990-01-01', 1000.50, '남'),
('장첸', 'jang@naver.com', '1992-05-10', 3500.75, '남'),
('정마담', 'jung@google.com', '1998-11-22', 120.10, '여');

SELECT * FROM members;

SELECT name, points FROM members 
WHERE points >= 1000; 

SELECT name, email FROM members 
WHERE email LIKE "%@google.com%";

SELECT name, birth_Date FROM members
ORDER BY birth_Date DESC; # ASC : 오름차순, DESC : 내림차순alter

SELECT name, birth_Date FROM members
ORDER BY birth_Date ASC;


