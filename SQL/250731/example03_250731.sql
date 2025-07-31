-- CREATE DATABASE IF NOT EXISTS school;
-- USE school;

-- CREATE TABLE students (
-- 	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--     PRIMARY KEY(id)
-- );

CREATE TABLE students (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT UNSIGNED, 
    grade VARCHAR(10)
);

DESC students;

-- INSERT INTO students VALUES(1, "강백호", 15, "8");
# Error Code: 1136. Column count doesn't match value count at row 1
# 첫번째 값이 없다

INSERT INTO students (name, age, grade) 
VALUES("서태웅", 15, "8");


INSERT INTO students (grade, name, age) 
VALUES("10", "채치수", "17");

SELECT * FROM students;

INSERT INTO students (grade, name, age)
VALUES("9", "정대만", 16);

INSERT INTO students (grade, name, age)
VALUES("8", "송태섭", 15);

# 특정 속성만 찾아오고 싶을 때
SELECT name from students;
SELECT grade from students;
SELECT name, grade from students;
SELECT name FROM students;

#특정 속성의 모든 값을 찾아오고 싶을 때 # = 대입연산자
SELECT * FROM students WHERE age = 16;

# != 부정연산자
SELECT * FROM students WHERE age != 16;
SELECT * FROM students WHERE age <> 16;
