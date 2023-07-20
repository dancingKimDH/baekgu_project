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
----- PHONENUM는 전화번호
INSERT INTO MEMBER (MEMBER_ID, ID, PW, EMAIL, `NAME`, GENDER_ID, BIRTHDATE, TELECOM_ID, PHONENUM)
VALUES
  ('M-01', 'SparkleGazer89', 'KpW4$9s!', 'SparkleGazer89@email.com', '김영수', 'G-01', '19850712', 'T-01', '010-1234-5678'), 
  ('M-02', 'MidnightWhisper21',	'TrL7@2h#',	'MidnightWhisper21@email.com', '이지현', 'G-02', '20010325', 'T-02', '010-2345-6789'), 
  ('M-03', 'SapphireSkywalker', 'HnY6%5r@',	'SapphireSkywalker@email.com', '박민준', 'G-01', '19880905', 'T-03', '010-3456-7890'), 
  ('M-04', 'LunaTideSurfer', 'WqB3!8f$', 'LunaTideSurfer@email.com', '최서영', 'G-02', '19951218일', 'T-01', '010-4567-8901'), 
  ('M-05', 'StarlightDreamer77', 'SdF2@4a#', 'StarlightDreamer77@email.com', '허승희', 'G-02', '19890201', 'T-05', '010-5678-9012'), 
  ('M-06', 'CrimsonPhoenix22', 'GbE7!9q#', 'CrimsonPhoenix22@email.com', '이민우', 'G-01', '19911109', 'T-06', '010-6789-0123'), 
  ('M-07', 'AquaMistWanderer', 'OpP5$2j!', 'AquaMistWanderer@email.com', '장지현', 'G-02', '19870429', 'T-04', '010-7890-1234'), 
  ('M-08', 'EmberEclipse55', 'VnM1$6l@', 'EmberEclipse55@email.com', '정민석', 'G-01', '19940814', 'T-02', '010-8901-2345'), 
  ('M-09', 'VelvetMystery33', 'XwR9%7z!', 'VelvetMystery33@email.com', '윤지영', 'G-02', '19970607', 'T-03', '010-9012-3456'), 
  ('M-10', 'AzureMysticBlaze', 'QbT4@3e!', 'AzureMysticBlaze@email.com', '김민재', 'G-01', '19901003', 'T-04', '010-0123-4567');


-- community_list 테이블 데이터 
----- COMLIST_ID = UNIQUE_ID
INSERT INTO COMMUNITY_LIST (COMLIST_ID, WRITINGGROUP_ID, TITLE, MEMBER_ID, DATEOFPREPARATION)
VALUES
  ('L-01', 'C-01', '꽃 챌린지', 'M-01', '20230510'),
  ('L-02', 'C-02', '신도림역 근처 괜찮은 고양이 병원 있을까요?', 'M-02', '20230515'),
  ('L-03', 'C-02', '여의도역 근처에 고슴도치 진료하는 병원 있을까요?', 'M-03', '20230602'),
  ('L-04', 'C-03', '강아지 사료 추천받아요', 'M-04', '20230610'),
  ('L-05', 'C-01', '물속성 고양이', 'M-05',	 '20230616'),
  ('L-06', 'C-04', '펫 박람회 추천템!!', 'M-06', '20230616'),
  ('L-07', 'C-03', '앵무새 간식은 뭐가 좋을까요?', 'M-07',	'20230620'),
  ('L-08', 'C-02', '홍제역 근처에 유기동물  케어해주는 병원이 있을까요?', 'M-08', '20230620'),
  ('L-09', 'C-01', '취미로 수제간식 만들기', 'M-09', '20230629'),
  ('L-10', 'C-04', '잘때 토끼가 자꾸 머리카락을 먹는데 어떻게해야...??', 'M-10', '20230703'),
  ('L-11', 'C-01', '삼색이 일상', 'M-05', '20230701'),
  ('L-12', 'C-02', '반려견 건강검진 조언', 'M-01', '20230702'),
  ('L-13', 'C-03', '건강한 식단으로 반려동물에게 미소를 선물하세요', 'M-09', '20230703'),
  ('L-14', 'C-04', '반려동물 방문 훈련 문의', 'M-10', '20230704'),
  ('L-15', 'C-01', '절미의 2023 SS 스타일링', 'M-06', '20230705'),
  ('L-16', 'C-02', '길냥이 입양 관련 예방접종 문의', 'M-08', '20230706'),
  ('L-17', 'C-03', '잠실 강아지 수제 간식 가게 공유', 'M-01', '20230707'),
  ('L-18', 'C-04', '반려동물과 함께 야외 활동 할 수 있는 장소 공유', 'M-09', '20230708'),
  ('L-19', 'C-01', '우리집 토끼와 특별한 시간', 'M-10', '20230709'),
  ('L-20', 'C-02', '반려동물 치석 관리와 예방법', 'M-01', '20230710'),
  ('L-21', 'C-03', '식이 알레르기를 가진 반려묘를 위한 식단 구성', 'M-02', '20230711'),
  ('L-22', 'C-04', '반려동물 동반 펫카페 추천', 'M-01', '20230712'),
  ('L-23', 'C-01', '셋째와 함께한 제주도 여행기', 'M-06', '20230713'),
  ('L-24', 'C-02', '종로구 24시간 응급병원 추천받아요', 'M-03', '20230714'),
  ('L-25', 'C-03', '식이 섬유를 고려한 반려묘의 건강 식단', 'M-05', '20230715'),
  ('L-26', 'C-04', '반려동물과 함께하는 가족 여행 팁', 'M-01', '20230716'),
  ('L-27', 'C-01', '나만의 반려동물 훈련 비법 공유', 'M-07', '20230717'),
  ('L-28', 'C-02', '반려묘의 피부 관리와 문제 대처', 'M-08', '20230718'),
  ('L-29', 'C-03', '식이 다이어트로 건강한 반려견 유지하기', 'M-09', '20230719'),
  ('L-30', 'C-04', '반려동물과 함께하는 액티비티 추천', 'M-01', '20230720');
  

-- pet_information 테이블 데이터 
----- PETINF_ID = UNIQUE_ID
INSERT INTO PET_INFORMATION(PETINF_ID, MEMBER_ID, SPECIES_ID, PETGEN_ID, PETNAME, PETAGE)
VALUES
  ('PI-01', 'M-01','PS-02','PG-02', '루시', '2년 8개월'),
  ('PI-02', 'M-02','PS-06','PG-01', '맥스', '1년 11개월'),
  ('PI-03', 'M-03','PS-01','PG-02', '코코', '1년 3개월'),
  ('PI-04', 'M-03','PS-01','PG-01', '체스터', '3년 4개월'),
  ('PI-05', 'M-04','PS-02','PG-02', '라일리', '4년 5개월'),
  ('PI-06', 'M-04','PS-02','PG-01', '오스카', '2년 2개월'),
  ('PI-07', 'M-05','PS-05','PG-02', '데이지', '2년 9개월'),
  ('PI-08', 'M-06','PS-16','PG-01', '버니', '1년 5개월'),
  ('PI-09', 'M-07','PS-01','PG-02', '미아', '5년 6개월'),
  ('PI-10', 'M-08','PS-01','PG-01', '찰리', '2년 11개월'),
  ('PI-11', 'M-09','PS-02','PG-02', '소피', '4년 4개월'),
  ('PI-12', 'M-09','PS-02','PG-01', '루브', '5년 7개월'),
  ('PI-13', 'M-09','PS-02','PG-02', '벨라', '3년 2개월'),
  ('PI-14', 'M-10','PS-05','PG-01', '아토', '4년 4개월');


-- PET_DIARY_INFORMATION 테이블 데이터
----- DIARYINF_ID = UNIQUE_ID
INSERT INTO PET_DIARY_INFORMATION(DIARYINF_ID, PETINF_ID, KEYFIGURE_ID, KEYFIGUREINPUT, DIARYDATEOFPREPARATION)
VALUES
  ('D-01', 'PI-01', 'FN-01', '3.5', '20230315'),
  ('D-02', 'PI-01', 'FN-02', '50', '20230315'),
  ('D-03', 'PI-01', 'FN-03', '200', '20230315'),
  ('D-04', 'PI-01', 'FN-04', 'NO', '20230315'),    
  ('D-05', 'PI-02', 'FN-01', '0.12', '20220802'),
  ('D-06', 'PI-02', 'FN-02', '10', '20220802'),
  ('D-07', 'PI-02', 'FN-03', '50', '20220802'),
  ('D-08', 'PI-02', 'FN-04', 'NO', '20220802'),  
  ('D-09', 'PI-03', 'FN-01', '10', '20211127'),
  ('D-10', 'PI-03', 'FN-02', '200', '20211127'),
  ('D-11', 'PI-03', 'FN-03', '500', '20211127'),
  ('D-12', 'PI-03', 'FN-04', 'YES', '20211127'),  
  ('D-13', 'PI-04', 'FN-01', '23', '20200609'),
  ('D-14', 'PI-04', 'FN-02', '500', '20200609'),
  ('D-15', 'PI-04', 'FN-03', '800', '20200609'),
  ('D-16', 'PI-04', 'FN-04', 'YES', '20200609'),  
  ('D-17', 'PI-05', 'FN-01', '4.2', '20230131'),
  ('D-18', 'PI-05', 'FN-02', '60', '20230131'),
  ('D-19', 'PI-05', 'FN-03', '250', '20230131'),
  ('D-20', 'PI-05', 'FN-04', 'YES', '20230131'),  
  ('D-21', 'PI-06', 'FN-01', '2.8', '200221208'),
  ('D-22', 'PI-06', 'FN-02', '45', '200221208'),
  ('D-23', 'PI-06', 'FN-03', '180', '200221208'),
  ('D-24', 'PI-06', 'FN-04', 'YES', '200221208'),  
  ('D-25', 'PI-07', 'FN-01', '0.5', '20210918'),
  ('D-26', 'PI-07', 'FN-02', '15', '20210918'),
  ('D-27', 'PI-07', 'FN-03', '30', '20210918'),
  ('D-28', 'PI-07', 'FN-04', 'NO', '20210918'),  
  ('D-29', 'PI-08', 'FN-01', '1.8', '20200507'),
  ('D-30', 'PI-08', 'FN-02', '40', '20200507'),
  ('D-31', 'PI-08', 'FN-03', '100', '20200507'),
  ('D-32', 'PI-08', 'FN-04', 'YES', '20200507'),  
  ('D-33', 'PI-09', 'FN-01', '5', '20230719'),
  ('D-34', 'PI-09', 'FN-02', '100', '20230719'),
  ('D-35', 'PI-09', 'FN-03', '200', '20230719'),
  ('D-36', 'PI-09', 'FN-04', 'YES', '20230719'),  
  ('D-37', 'PI-10', 'FN-01', '8', '20220425'),
  ('D-38', 'PI-10', 'FN-02', '300', '20220425'),
  ('D-39', 'PI-10', 'FN-03', '600', '20220425'),
  ('D-40', 'PI-10', 'FN-04', 'NO', '20220425'),  
  ('D-41', 'PI-11', 'FN-01', '5.1', '20211012'),
  ('D-42', 'PI-11', 'FN-02', '70', '20211012'),
  ('D-43', 'PI-11', 'FN-03', '300', '20211012'),
  ('D-44', 'PI-11', 'FN-04', 'YES', '20211012'),  
  ('D-45', 'PI-12', 'FN-01', '3.9', '20200214'),
  ('D-46', 'PI-12', 'FN-02', '55', '20200214'),
  ('D-47', 'PI-12', 'FN-03', '220', '20200214'),
  ('D-48', 'PI-12', 'FN-04', 'NO', '20200214'),  
  ('D-49', 'PI-13', 'FN-01', '3.1', '20230503'),
  ('D-50', 'PI-13', 'FN-02', '40', '20230503'),
  ('D-51', 'PI-13', 'FN-03', '160', '20230503'),
  ('D-52', 'PI-13', 'FN-04', 'YES', '20230503'),  
  ('D-53', 'PI-14', 'FN-01', '0.55', '20221106'),
  ('D-54', 'PI-14', 'FN-02', '20', '20221106'),
  ('D-55', 'PI-14', 'FN-03', '35', '20221106'),
  ('D-56', 'PI-14', 'FN-04', 'YES', '20221106');
  
