-- system(관리자)
alter user hr identified by hr account unlock;

select *
from DBA_TABLES;

-- 제품명
-- 버전

grant create view
    to SCOTT;

create user user01 identified by 1234;

grant connect,resource
to user01;

grant create synonym
to SCOTT;

-- 사용자 계정
-- create user 계졍명 identified by 비밀번호 [account unlock | lock]
-- 계정은 대소문자 구분 x, 비밀번호는 구분 o

create user orclstudy identified by 1234;

-- DCL : Data Control Language
-- grant : 권한을 부여
-- revoke : 권한을 회수

-- grant 어떤권한
-- to 누구에게

-- ORA-01045: user ORCLSTUDY lacks CREATE SESSION privilege; logon denied
grant create session
to orclstudy;

grant create table
to orclstudy;

select USERNAME, DEFAULT_TABLESPACE
from DBA_USERS
where USERNAME in ('SCOTT','ORCLSTUDY');

alter user orclstudy
quota 2m on SYSTEM;

-- 테이블 스페이스 확인
select TABLESPACE_NAME,FILE_NAME,BYTES
from DBA_DATA_FILES;
-- 계정의 테이블 스페이스 확인
select USERNAME,DEFAULT_TABLESPACE
from DBA_USERS;

-- 테이블 스페이스 만들기
create tablespace mega
datafile  'C:\oraclexe\app\oracle\oradata\XE\mega.dbf' size 100M
autoextend on next 10M;

create user batman identified by 1234 default tablespace mega;

select USERNAME, DEFAULT_TABLESPACE
from DBA_USERS
where USERNAME in ('BATMAN');

grant create session, create table
to batman;

alter user BATMAN
    quota 2m on MEGA;