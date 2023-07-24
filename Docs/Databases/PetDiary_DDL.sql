
CREATE TABLE COMMUNITY_LIST
(
  COMLIST_ID      VARCHAR(500) NOT NULL COMMENT '커뮤니티 글 목록_ID',
  WRITINGGROUP_ID VARCHAR(500) NOT NULL COMMENT '글분류_ID',
  TITLE           VARCHAR(500) NOT NULL COMMENT '제목',
  MEMBER_ID       VARCHAR(100) NOT NULL COMMENT '가입회원_ID',
  COMWRITE_ID     VARCHAR(500) NOT NULL COMMENT '커뮤니티 글 작성_ID',
  PRIMARY KEY (COMLIST_ID)
) COMMENT '커뮤니티 글 목록';

CREATE TABLE COMMUNITY_WRITE
(
  COMWRITE_ID       VARCHAR(500) NOT NULL COMMENT '커뮤니티 글 작성_ID',
  MEMBER_ID         VARCHAR(100) NOT NULL COMMENT '가입회원_ID',
  WRITINGGROUP_NAME VARCHAR(500) NOT NULL COMMENT '글분류 이름',
  TITLE             VARCHAR(500) NOT NULL COMMENT '글 제목',
  CONTENT           VARCHAR(500) NOT NULL COMMENT '글 내용',
  DATEOFPREPARATION TIMESTAMP    NOT NULL COMMENT '글 작성일자',
  PRIMARY KEY (COMWRITE_ID)
) COMMENT '커뮤니티 글 작성';

CREATE TABLE GENDER
(
  GENDER_ID   VARCHAR(100) NOT NULL COMMENT '성별_ID',
  GENDER_NAME VARCHAR(500) NOT NULL COMMENT '성별 이름',
  PRIMARY KEY (GENDER_ID)
) COMMENT '성별';

CREATE TABLE KEY_FIGURE
(
  KEYFIGURE_ID   VARCHAR(500) NOT NULL COMMENT '주요수치_ID',
  KEYFIGURE_NAME VARCHAR(500) NOT NULL COMMENT '주요수치 이름',
  PRIMARY KEY (KEYFIGURE_ID)
) COMMENT '주요수치';

CREATE TABLE MEMBER
(
  ID         VARCHAR(100) NOT NULL COMMENT '아이디',
  PW         VARCHAR(100) NOT NULL COMMENT '비밀번호',
  EMAIL      VARCHAR(100) NOT NULL COMMENT '이메일',
  NAME       VARCHAR(100) NOT NULL COMMENT '이름',
  GENDER_ID  VARCHAR(100) NOT NULL COMMENT '성별_ID',
  BIRTHDATE  VARCHAR(100) NOT NULL COMMENT '생년월일',
  TELECOM_ID VARCHAR(100) NOT NULL COMMENT '통신사_ID',
  PHONENUM   VARCHAR(100) NOT NULL COMMENT '휴대폰번호',
  MEMBER_ID  VARCHAR(100) NOT NULL COMMENT '가입회원_ID',
  PRIMARY KEY (MEMBER_ID)
) COMMENT '가입회원';

CREATE TABLE PET_DIARY_INFORMATION
(
  PETINF_ID              VARCHAR(500) NOT NULL COMMENT '펫별정보_ID',
  KEYFIGURE_ID           VARCHAR(500) NOT NULL COMMENT '주요수치_ID',
  KEYFIGUREINPUT         VARCHAR(500) NOT NULL COMMENT '주요수지 입력',
  DIARYDATEOFPREPARATION VARCHAR(500) NOT NULL COMMENT '다이어리 작성일자',
  DIARYINF_ID            VARCHAR(500) NOT NULL COMMENT '펫다이어리정보_ID',
  PRIMARY KEY (DIARYINF_ID)
) COMMENT '펫 다이어리 정보';

CREATE TABLE PET_GENDER
(
  PETGEN_ID      VARCHAR(500) NOT NULL COMMENT '펫 성별_ID',
  PETGENDER_NAME VARCHAR(500) NOT NULL COMMENT '펫성별 이름',
  PRIMARY KEY (PETGEN_ID)
) COMMENT '펫 성별';

CREATE TABLE PET_INFORMATION
(
  PETINF_ID  VARCHAR(500) NOT NULL COMMENT '펫별정보_ID',
  MEMBER_ID  VARCHAR(100) NOT NULL COMMENT '가입회원_ID',
  SPECIES_ID VARCHAR(500) NOT NULL COMMENT '펫 종_ID',
  PETGEN_ID  VARCHAR(500) NOT NULL COMMENT '펫 성별_ID',
  PETNAME    VARCHAR(500) NOT NULL COMMENT '펫 이름',
  PETAGE     VARCHAR(500) NOT NULL COMMENT '펫 나이',
  PRIMARY KEY (PETINF_ID)
) COMMENT '펫 별 정보';

CREATE TABLE SPECIES
(
  SPECIES_ID   VARCHAR(500) NOT NULL COMMENT '펫 종_ID',
  SPECIES_NAME VARCHAR(500) NOT NULL COMMENT '펫 종 이름',
  PRIMARY KEY (SPECIES_ID)
) COMMENT '펫 종';

CREATE TABLE TELECOM
(
  TELECOM_ID   VARCHAR(100) NOT NULL COMMENT '통신사_ID',
  TELECOM_NAME VARCHAR(500) NOT NULL COMMENT '통신사 이름',
  PRIMARY KEY (TELECOM_ID)
) COMMENT '통신사';

CREATE TABLE WRITING_GROUP
(
  WRITINGGROUP_NAME VARCHAR(500) NOT NULL COMMENT '글분류 이름',
  WRITINGGROUP_ID   VARCHAR(500) NOT NULL COMMENT '글분류_ID',
  PRIMARY KEY (WRITINGGROUP_NAME)
) COMMENT '글 분류';

ALTER TABLE PET_DIARY_INFORMATION
  ADD CONSTRAINT FK_PET_INFORMATION_TO_PET_DIARY_INFORMATION
    FOREIGN KEY (PETINF_ID)
    REFERENCES PET_INFORMATION (PETINF_ID);

ALTER TABLE PET_INFORMATION
  ADD CONSTRAINT FK_PET_GENDER_TO_PET_INFORMATION
    FOREIGN KEY (PETGEN_ID)
    REFERENCES PET_GENDER (PETGEN_ID);

ALTER TABLE MEMBER
  ADD CONSTRAINT FK_GENDER_TO_MEMBER
    FOREIGN KEY (GENDER_ID)
    REFERENCES GENDER (GENDER_ID);

ALTER TABLE MEMBER
  ADD CONSTRAINT FK_TELECOM_TO_MEMBER
    FOREIGN KEY (TELECOM_ID)
    REFERENCES TELECOM (TELECOM_ID);

ALTER TABLE PET_INFORMATION
  ADD CONSTRAINT FK_SPECIES_TO_PET_INFORMATION
    FOREIGN KEY (SPECIES_ID)
    REFERENCES SPECIES (SPECIES_ID);

ALTER TABLE PET_INFORMATION
  ADD CONSTRAINT FK_MEMBER_TO_PET_INFORMATION
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE PET_DIARY_INFORMATION
  ADD CONSTRAINT FK_KEY_FIGURE_TO_PET_DIARY_INFORMATION
    FOREIGN KEY (KEYFIGURE_ID)
    REFERENCES KEY_FIGURE (KEYFIGURE_ID);

ALTER TABLE COMMUNITY_LIST
  ADD CONSTRAINT FK_COMMUNITY_WRITE_TO_COMMUNITY_LIST
    FOREIGN KEY (COMWRITE_ID)
    REFERENCES COMMUNITY_WRITE (COMWRITE_ID);

ALTER TABLE COMMUNITY_WRITE
  ADD CONSTRAINT FK_MEMBER_TO_COMMUNITY_WRITE
    FOREIGN KEY (MEMBER_ID)
    REFERENCES MEMBER (MEMBER_ID);

ALTER TABLE COMMUNITY_WRITE
  ADD CONSTRAINT FK_WRITING_GROUP_TO_COMMUNITY_WRITE
    FOREIGN KEY (WRITINGGROUP_NAME)
    REFERENCES WRITING_GROUP (WRITINGGROUP_NAME);
