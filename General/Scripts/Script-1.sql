-- 다음 요구사항을 충족할 수 있도록 SQL문을 작성하고 실행하였지만, 
-- 실패하거나 일부가 요구사항에 맞게 작성되지 않았다.
-- SQL문을 분석하여 원인과 조치내용을 작성하시오.

-- 1) MEMBER_ID 컬럼에 PRIMARY KEY 제약조건 설정.
-- 2) MEMBER_PWD 컬럼에 NOT NULL 제약조건 설정.
-- 3) MEMBER_NAME 컬럼에 가변 길이 문자열 30byte 설정.

-- MEMBERS 테이블 생성

CREATE TABLE MEMBERS(

MEMBER_ID VARCHAR2(20),

MEMBER_PWD VARCHAR2(20) NOT NULL,

MEMBER_NAME VARCHAR2(30),

MEMBER_AGE NUMBER,

MEMBER_EMAIL VARCHAR2(50),

PRIMARY KEY(MEMBER_ID)
);

DROP TABLE MEMBERS;

SELECT * FROM MEMBERS; 

-- 1) BOARD_NO 컬럼에 PRIMARY KEY 제약조건 설정.
-- 2) BOARD_WRITER 컬럼에 MEMBERS 테이블의 MEMBER_ID를 참조하는 FOREIGN KEY 제약조건 설정.
-- 3) BOARD_REG_DATE(작성일) 컬럼에 현재 시간으로 기본값 설정


-- BOARDS 테이블 생성

CREATE TABLE BOARDS(

BOARD_NO NUMBER PRIMARY KEY,

BOARD_TITLE VARCHAR2(100),

BOARD_CONTENT VARCHAR2(4000),

BOARD_WRITER VARCHAR2(20) REFERENCES MEMBERS (MEMBER_ID),

BOARD_REG_DATE DATE DEFAULT CURRENT_DATE

);
SELECT * FROM BOARDS; 

DROP TABLE BOARDS;