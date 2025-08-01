DESC students;
SELECT *  FROM students;

# 아래 구문은 students라는 테이블 내 모든 데이터의 name값을 변경
UPDATE students SET name = 'David';

UPDATE students SET name = '윤대협' WHERE id = 1; 

UPDATE students SET age = '16세', grade = '9학년' 
WHERE id = 1;  #복수의 값을 설정하고 싶을 때는 ,로 구분하여 설정 가능

UPDATE students SET age = '16세', grade = '9학년' 
WHERE name = '서태웅';
# Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
# 절대 건드리면 안 됨! > 데이터는 ctrl + z로 돌아갈 수 없음

# 아래 구문은 students라는 테이블 내 모든 데이터를 delete 하겠다는 뜻
DELETE FROM students;

DELETE FROM students
WHERE name = '서태웅'; #name이 PRYMARY KEY가 아니기 때문에 안전모드라 제거가 안 됨alter

DELETE FROM students
WHERE id = 2;

SELECT * FROM students;

INSERT INTO students (name, age, grade)
VALUES ("서태웅", "15세", "8학년");
# 이미 우리는 하나의 공간에 값이 쌓여있기 때문에 중간에 값이 나가더라도 채우지 않고
# 생성된 공간 이후부터 값을 채운다
# 만약 ID값을 새롭게 재정렬을 하고 싶다면?
ALTER TABLE students AUTO_INCREMENT = 1;
# AUTO_INCREMENT는 값이 중간에 빠지더라도 감안하고 써야함

INSERT INTO students VALUES ("2", "강백호", "15세", "8학년");
