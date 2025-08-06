SHOW TABLES;

SELECT COUNT(*) FROM film;

SELECT * FROM film
LIMIT 10;

SELECT DISTINCT rating FROM film;

# film 테이블에 존재하는 영화 연도 출력해주세요

SELECT DISTINCT release_year FROM film;

SELECT * FROM rental;
#LIMIT 10;

#렌탈 테이블에서 인벤토리 아이디값이 367인 값만 출력한다면?
SELECT * FROM rental WHERE inventory_id=367;

#고객 관련 데이터를 찾아보고 싶다면?
SELECT COUNT(*) FROM customer;
SELECT * FROM customer LIMIT 5;

SELECT COUNT(*) FROM payment;
SELECT * FROM payment
LIMIT 5;

SELECT 
SUM(amount), AVG(amount), 
MAX(amount), MIN(amount)
#향후 출시해야 되는 상품 금액대를 조정할 때 사용자의 소비 심리를 파악하기 위해 사용
FROM payment;

# rental 테이블에서 inventory_id가 367이고 staff=1인 값을 찾아와주세요

SELECT * FROM rental WHERE inventory_id = 367 AND staff_id=1;
