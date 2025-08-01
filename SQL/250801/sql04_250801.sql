USE mysql;

SELECT host, user FROM user;

#localhost => 127.0.0.1 => DNS

CREATE USER 'david7'@'localhost' #id
IDENTIFIED BY 'david1234'; #pw

CREATE USER 'david8'@'%' 
IDENTIFIED BY 'david1234'; 

SET PASSWORD FOR 'david7'@'localhost' = 'david5678';

DROP USER 'david7'@'localhost';
DROP USER 'david8'@'%';

SHOW GRANTS FOR 'david7'@'localhost';
GRANT SELECT ON school.students TO 'david7'@'localhost';
GRANT ALL ON school.* TO 'david7'@'localhost';