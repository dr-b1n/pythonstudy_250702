SELECT rating FROM film 
GROUP BY rating;

SELECT rating, COUNT(*) FROM film 
GROUP BY rating;

/* 
DISTINCT : 중복된 값을 다 버리고 유일한 값만 반환하라
GROUP BY: 지정한 컬럼의 값을 기준으로 그룹을 묶어라, 주로 집계 함수와 함께 사용
*/

SELECT rating, COUNT(*) FROM film 
WHERE rating = "PG" OR rating = "G"
GROUP BY rating;

SELECT * FROM film;

# film 테이블에서 영화등급이 G등급인 영화 제목을 모두 출력해주세요
SELECT title, rating FROM film 
WHERE rating = "G"
GROUP BY rating;

# film 테이블에서 영화등급이 G등급||PG등급인 영화 제목을 모두 출력해주세요
SELECT title, rating FROM film 
WHERE rating = "G" OR rating = "PG";
# title은 독립적인 요소이기 때문에 GROUP BY가 불가능함

/* 필름 테이블에서 영화개봉 년도가 2006년 또는 2007년이고, 
영화등급이 PG 또는 G등급인 영화의 제목만 출력해주세요 */

SELECT * FROM film;
SELECT DISTINCT release_year FROM film;

SELECT title, rating FROM film
WHERE rating = "G" OR rating = "PG"
AND release_year = "2006" OR release_year = "2007";

SELECT * FROM film WHERE rating = "PG";

SELECT * FROM film LIMIT 1;

SELECT title FROM film
WHERE 
	(release_year = 2006 OR release_year = 2007) AND
	(rating = "G" OR rating = "PG");
    
/*
film 테이블에서 rating으로 그룹을 묶어서, 각 등급별 영화 갯수와 등급, 
각 그룹별 평균 rental_rate를 출력해주세요
*/

SELECT * FROM film;

SELECT rating, COUNT(rating), AVG(rental_rate)
FROM film GROUP BY rating;

/*
GROUP BY => 집계함수를 사용해서 들어오면, 해당 컬럼값이 실제 그룹핑과
관계가 없더라도 출력값으로 허용 (*예외조항)
*/

/*
film 테이블에서 rating으로 그룹을 묶어서 각 등급별 영화 갯수와
각 등급별 평균 렌탈비용(replacement_cost)을 출력하는데 평균 렌탈비용이 높은 순으로 출력해주세요
*/

SELECT * FROM film;
SELECT rating, COUNT(rating), AVG(rental_rate)
FROM film 
GROUP BY rating
ORDER BY AVG(rental_rate) DESC;


SELECT * FROM film;

SELECT 
	rating, 
	COUNT(*) AS total_films, 
	AVG(rental_rate) AS average_rental_rate
FROM film 
GROUP BY rating
ORDER BY average_rental_rate DESC;

/*
각 등급별 영화길이(length)가 130분 이상인 영화의 갯수와 등급을 출력해보세요
*/

SELECT 
	rating, count(*) AS filmcount
FROM film
WHERE length >= 130
GROUP BY rating
ORDER BY filmcount DESC;