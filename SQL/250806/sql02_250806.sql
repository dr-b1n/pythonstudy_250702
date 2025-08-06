# Netflix Data 분석 마케터
# 특정 데이터 존재 = 사용자별 데일리 하루 시청시간
# A 사용자가 10일 5시간 30분 시청
# B 사용자가 15일 3시간 시청

# STP => Segment => Target => Positioning => Persona

CREATE DATABASE netflixinfo;
USE netflixinfo;

CREATE TABLE memberdata  (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    gender ENUM ('남', '여') NOT NULL,
    connet_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    finish_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP

FROM memberdata;