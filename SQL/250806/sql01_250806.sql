USE interpark;

SELECT * FROM performances;

# 1. 크롤링한 전체 데이터 개수
SELECT COUNT(*) AS TOtal_performances FROM performances;
# 집계 함수 COUNT()

#2. 크롤링한 데이터 가운데 어떤 지역/장소에서 가장 많이 공연을 하고 있는지 확인
SELECT place, COUNT(*) AS 개수
FROM performances 
GROUP BY place
ORDER BY 개수 DESC;
# 특정 컬럼을 집계하고자 할 때는 반드시 GROUP BY로 설정해줘야함

#3. 특정 장소의 공연을 조회하고자 할 때
SELECT * FROM performances
WHERE place LIKE "%전국 각 지역%";

# 4. 공연 일정이 가까운순 정리 (*시작일을 기준)
SELECT title, place, SUBSTRING_INDEX(date_range, '-', 1) AS start_date
FROM performances
ORDER BY start_date DESC;
#SUBSTRING_INDEX 특정 구분자를 기준으로 잘라주는 함수

