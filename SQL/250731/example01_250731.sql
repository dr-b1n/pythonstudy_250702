-- CREATE DATABASE customer_db;
-- USE customer_db;

 /*CREATE TABLE customer (
 	No INT NOT NULL AUTO_INCREMENT,
	Name CHAR(20) NOT NULL,
    Age TINYINT,
	Phone VARCHAR(20),
	Email VARCHAR(30) NOT NULL,
    Address VARCHAR(50),
	PRIMARY KEY(No)
 );
*/

# 테이블을 제거하고 싶다면
-- DROP TABLE IF EXISTS customer;

-- SHOW TABLES;
# 현재 보고 있는 데이터베이스 내 생성된 모든 테이블 확인
DESC customer;