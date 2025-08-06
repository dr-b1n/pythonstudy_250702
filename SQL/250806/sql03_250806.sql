# 여러분들은 모두 나이키 브랜드의 데이터 마케팅 담당자
# 어떤 데이터가 존재 > 최근 1년간 월별 제품별 평균 매출을 계산해야하는 미션

# 데이터베이스 > 테이블 > 필드 정의 > 최근 1년간 월별 제품별 평균 매출 출력

CREATE DATABASE nikedata;
USE nikedata;

CREATE TABLE product_info (
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    PRICE INT NOT NULL
);

ALTER TABLE product_info MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;

CREATE TABLE member_info (
	member_id INT NOT NULL PRIMARY KEY,
    member_name VARCHAR(20) NOT NULL,
    purchase_time DATE,
	FOREIGN KEY(member_id) REFERENCES product_info(id)
);

INSERT INTO product_info (id, name, PRICE) 
VALUES
();