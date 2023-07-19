-- GENDER 테이블 데이터
INSERT INTO GENDER (GENDER_ID, GENDER_NAME)
VALUES
  ('G-01', '남성'),
  ('G-02', '여성');
  
-- TELECOM 테이블 데이터
INSERT INTO TELECOM (TELECOM_ID, TELECOM_NAME)
VALUES
  ('T-01', 'SK 텔레콤'),
  ('T-02', 'KT'),
  ('T-03', 'LG U+'),
  ('T-04', 'SK 텔레콤 알뜰폰'),
  ('T-05', 'KT 알뜰폰'),
  ('T-06', 'LG U+ 알뜰폰');
  
-- PET_GENDER 테이블 데이터
INSERT INTO PET_GENDER (PETGEN_ID, PETGENDER_NAME)
VALUES
  ('PG-01', '수컷'),
  ('PG-02', '암컷');

-- SPECIES 테이블 데이터
INSERT INTO SPECIES (SPECIES_ID, SPECIES_NAME)
VALUES
  ('PS-01', '개(강아지)'),
  ('PS-02', '고양이'),
  ('PS-03', '햄스터'),
  ('PS-04', '슈가글라이더'),
  ('PS-05', '고슴도치'),
  ('PS-06', '앵무새'),
  ('PS-07', '기니피그'),
  ('PS-08', '카멜레온'),
  ('PS-09', '다람쥐'),
  ('PS-10', '도마뱀'),
  ('PS-11', '거북이'),
  ('PS-12', '미어캣'),
  ('PS-13', '오리'),
  ('PS-14', '친칠라'),
  ('PS-15', '라쿤'),
  ('PS-16', '토끼');

-- KEY_FIGURE 테이블 데이터
INSERT INTO KEY_FIGURE (KEYFIGURE_ID, KEYFIGURE_NAME)
VALUES
  ('FN-01', '몸무게(kg)'),
  ('FN-02', '건식(g)'),
  ('FN-03', '습식(g)'),
  ('FN-04', '간식(g)'),
  ('FN-05', '음수량(ml)'),
  ('FN-06', '중성화 여부');

-- WRITING_GROUP 테이블 데이터 
INSERT INTO WRITING_GROUP (WRITINGGROUP_ID, WRITINGGROUP_NAME)
VALUES
  ('C-01', '자랑'),
  ('C-02', '병원'),
  ('C-03', '사료/간식'),
  ('C-04', '기타');

-- MEMBER 테이블 데이터
INSERT INTO MEMBER (ID, PW, EMAIL, NAME, GENDER_ID, BIRTHDATE, TELECOM_ID, PHONENUM, REGANI_ID, MEMBER_ID)
VALUES
  ('user123', 'password123', 'user123@example.com', '홍길동', '1', 19900101, '1', 01012345678, 'pet123', 'mem001'),
  ('user456', 'password456', 'user456@example.com', '김영희', '2', 19851205, '2', 01098765432, 'pet456', 'mem002');


-- community_list 테이블 데이터 



-- pet_information 테이블 데이터 




-- PET_DIARY_INFORMATION 테이블 데이터
INSERT INTO PETDIARYINFORMATION (PETDIARYINFORMATION_ID, PETDIARYINFORMATION_NAME)
VALUES
  ('D-01', ''),
  ('D-02', ''),
  ('D-03', ''),
  ('D-04', '');