DELETE FROM AUTHS;
DELETE FROM AUTH_NAMES;

-- 권한 종류
insert into AUTH_NAMES 
(UNIQUE_ID,AUTH_NAME)
values
('ADMIN','ADMIN'),
('MANAGER','MANAGER'),
('MEMBER','MEMBER'),
('GUEST','GUEST');