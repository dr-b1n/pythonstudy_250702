/*
현재 이 공간을 통해서 우리는 SQL 언어를 작성할 예정입니다!
해당 공간에 한 줄씩 코드를 작성 -> 쿼리(문)
하나의 쿼리가 종료되었다는 것을 정의 -> ;
*/

#1. DB생성 : 예약어 CREATE DATABASE dbname;
#2. DB 목록 확인 :  SHOW DATABASES;
#3. DB 접속 :USE dbname;
#4. Table 생성 : CREATE TABLE
/*CREATE TABLE myTable (
	id INT, name VARCHAR(50), PRIMARY 
);
*/ 
#5. Data 삽입
#6. DB 삭제 : DROP DATABASE IF EXISTS dbname; // DROP DATABASE

-- CREATE DATABASE hazel;
-- USE hazel;

-- CREATE TABLE mytable (
-- 	id FLOAT,
--     name VARCHAR(50),
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE mytable (
-- 	id INT,
--     name VARCHAR(50),
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE mytable (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     #id라는 속성은 정수가 들어와야하고 값이 정해져있지 않고 증가할거야
--     NOT NULL은 필수값을 의미함
-- --  name CHAR(50),
--     #하나의 문자열을 쓰겠다, 5면 5글자 이하를 쓰겠다 // 50개의 문자열이 들어올 수 있는 공간을 항상 준비해놓는다
--     city VARCHAR(50),
--     #최대 50개까지 입력을 할 수 있지만 5개만 넣게 된다면 다른 공간을 굳이 할당해주지 않음 
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE mytable (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(50),
--     PRIMARY KEY(id, name)
--     #하나의 레코드 안에 프라이머리 키는 복수 가능
-- );

CREATE TABLE mytable (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    modelnumber VARCHAR(15) NOT NULL,
    series VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)   
);



