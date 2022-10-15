-- 데이터베이스 생성 : jinsookdb는 데이터베이스명
CREATE DATABASE jinsookdb;

-- 사용자 생성
CREATE USER jinsook@localhost IDENTIFIED BY '1111';

-- 사용자의 db에 대한 권한 부여
GRANT ALL privileges ON jinsookdb.* TO jinsook@localhost WITH GRANT OPTION;

-- 권한 갱신
FLUSH PRIVILEGES;

-- 데이터베이스 조회
SHOW DATABASES;

-- board 테이블
CREATE TABLE BOARD(
    BCODE INT AUTO_INCREMENT PRIMARY KEY,
    SUBJECT VARCHAR(100),
    CONTENT TEXT,
    WRITER VARCHAR(50),
    REGDATE DATE
);

COMMIT;

ALTER TABLE board
  ADD FILENAME VARCHAR(50)
    AFTER REGDATE;
