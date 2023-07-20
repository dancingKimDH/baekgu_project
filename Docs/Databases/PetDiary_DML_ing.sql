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
  ('FN-02', '식사량(g)'),
  ('FN-03', '음수량(ml)'),
  ('FN-04', '중성화 여부');

-- WRITING_GROUP 테이블 데이터 
INSERT INTO WRITING_GROUP (WRITINGGROUP_ID, WRITINGGROUP_NAME)
VALUES
  ('C-01', '자랑'),
  ('C-02', '병원'),
  ('C-03', '사료/간식'),
  ('C-04', '기타');

-- MEMBER 테이블 데이터
----- GENDER_ID는 GENDER 테이블, TELECOM_ID는 TELECOM 테이블, MEMBER_ID=UNIQUE_ID
INSERT INTO MEMBER (ID, PW, EMAIL, `NAME`, GENDER_ID, BIRTHDATE, TELECOM_ID, PHONENUM, REGANI_ID, MEMBER_ID)
VALUES
  ('SparkleGazer89', 'KpW4$9s!', 'SparkleGazer89@email.com', '김영수', '남성', '19850712',	'SK텔레콤', '010-1234-5678', 'M-01'), 
  ('MidnightWhisper21',	'TrL7@2h#',	'MidnightWhisper21@email.com	이지현	여성	1992년 3월 25일	KT	010-2345-6789	M-02'), 
  ('SapphireSkywalker', 'HnY6%5r@',	'SapphireSkywalker@email.com	박민준	남성	1988년 9월 5일	LG유플러스	010-3456-7890	M-03'), 
  ('LunaTideSurfer', 'WqB3!8f$', 'LunaTideSurfer@email.com	최서영	여성	1995년 12월 18일	SK텔레콤	010-4567-8901	M-04'), 
  ('StarlightDreamer77', 'SdF2@4a#',  'StarlightDreamer77@email.com	허승희	여성	1989년 2월 1일	KT	010-5678-9012	M-05'), 
  ('CrimsonPhoenix22', 'GbE7!9q#', 'CrimsonPhoenix22@email.com	이민우	남성	1991년 11월 9일	LG유플러스	010-6789-0123	M-06'), 
  ('AquaMistWanderer', 'OpP5$2j!', 'AquaMistWanderer@email.com	장지현	여성	1987년 4월 29일	SK텔레콤	010-7890-1234	M-07'), 
  ('EmberEclipse55', 'VnM1$6l@', 'EmberEclipse55@email.com	정민석	남성	1994년 8월 14일	KT	010-8901-2345	M-08'), 
  ('VelvetMystery33', 'XwR9%7z!', 'VelvetMystery33@email.com	윤지영	여성	1997년 6월 7일	LG유플러스	010-9012-3456	M-09'), 
  ('AzureMysticBlaze', 'QbT4@3e!', 'AzureMysticBlaze@email.com	김민재	남성	1990년 10월 3일	SK텔레콤	010-0123-4567	M-10');







-- community_list 테이블 데이터 



-- pet_information 테이블 데이터 




-- PET_DIARY_INFORMATION 테이블 데이터
INSERT INTO PETDIARYINFORMATION (PETDIARYINFORMATION_ID, PETDIARYINFORMATION_NAME)
VALUES
  ('D-01', ''),
  ('D-02', ''),
  ('D-03', ''),
  ('D-04', '');