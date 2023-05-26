-- system(관리자)
alter user hr identified by hr account unlock;

select *
from DBA_TABLES;

-- 제품명
-- 버전

grant create view
    to SCOTT;

create user user01 identified by 1234;

grant connect, resource
    to user01;

grant create session, create table, create view
    to user01;

alter user user01
    quota 2 m on MEGA;

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
where USERNAME in ('SCOTT', 'ORCLSTUDY');

alter user orclstudy
    quota 2 m on SYSTEM;

-- 테이블 스페이스 확인
select TABLESPACE_NAME, FILE_NAME, BYTES
from DBA_DATA_FILES;
-- 계정의 테이블 스페이스 확인
select USERNAME, DEFAULT_TABLESPACE
from DBA_USERS;

-- 테이블 스페이스 만들기
create tablespace mega
    datafile 'C:\oraclexe\app\oracle\oradata\XE\mega.dbf' size 100 M
    autoextend on next 10 M;

create user batman identified by 1234 default tablespace mega;

select USERNAME, DEFAULT_TABLESPACE
from DBA_USERS
where USERNAME in ('BATMAN');

grant create session, create table
    to batman;

alter user BATMAN
    quota 2 m on MEGA;

-- 기본 테이블 스페이스 변경
alter user orclstudy
    default tablespace USERS;

-- 시스템 권한
-- 객체 권한

-- 롤 (시스템 권한의 묶음)
-- resource, connect
-- 객체 권한

grant create session, create table, create view
    to batman;
-- 롤(시스템 권한의 묶음)
-- resource, connect
-- dba : 슈퍼계정

create user user02 identified by 1234 default tablespace mega;
grant resource, connect
    to user02;

create role mrole;

grant create session, create view, create table to mrole;

create user user03 identified by 1234 default tablespace mega;

grant mrole to user03;

alter user user03
    quota 2 m on mega;

revoke mrole
    from user03;

drop role mrole;

drop user user03 cascade;

-- 객체 권한
create user user01 identified by 1234 default tablespace mega;

grant resource, connect
    to user01;

alter user user01
    quota 2 m on mega;

-- 시스템 권한
select *
from DBA_SYS_PRIVS
where GRANTEE = 'USER01';

-- 롤권한
select *
from DBA_ROLE_PRIVS
where GRANTEE = 'USER01';

create user mega identified by 1234 default tablespace mega;

select USERNAME, DEFAULT_TABLESPACE
from DBA_USERS
where USERNAME in ('MEGA');

grant create session, create table
    to mega;

alter user MEGA
    quota 2 m on MEGA;

select NAME,DB_UNIQUE_NAME
from V$DATABASE;

SELECT instance FROM v$thread;

-- 시스템 권한
select *
from DBA_SYS_PRIVS
where GRANTEE = 'MEGA';

-- 롤권한
select *
from DBA_ROLE_PRIVS
where GRANTEE = 'MEGA';

GRANT CREATE SEQUENCE
TO mega;

GRANT EXECUTE ANY PROCEDURE TO mega;

grant create table to mega;

grant create synonym
    to mega;
    
grant create procedure to mega;