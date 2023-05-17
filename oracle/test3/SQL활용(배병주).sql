-- 1번
-- 테이블 구조와 제약조건 생성
create table movie
(
    tNo     number(2),
    mNo     char(1),
    mTitle  varchar2(20),
    price   number(5) check (price <= 20000),
    seatNum number(3) default 10,
    CONSTRAINT pk_movie primary key (tNo, mNo)
);

-- 1)
DESC movie;

--2)
alter table movie
    add wdate date DEFAULT sysdate;

--3)
alter table movie
    modify mTitle varchar2(50);

--4)
alter table movie
    drop constraint pk_movie;

--5)
alter table movie
    drop column tNo;

--6)
alter table movie
    add constraint pk_movie primary key (mNo);

--7)
select *
from USER_CONSTRAINTS
where TABLE_NAME = 'MOVIE';

-- 레코드 삽입
insert into movie
values (1, '사랑과영혼', null, 10, '22/07/06');

insert into movie
values (2, '아바타', null, 10, '22/07/06');

insert into movie
values (3, '매트릭스', null, 10, '22/07/06');

insert into movie
values (4, '터미네이터', null, 10, '22/07/06');

insert into movie
values (5, '레디플레이원', null, 10, '22/07/06');

insert into movie
values (6, '스파이더맨', null, 10, '22/07/06');

-- 8)
update movie
set price  = 9000,
    seatNum=100
where mNo = 2
   or mNo = 4
   or mNo = 6;

commit;

-- 9)
delete
from movie
where price IS NULL;

rollback;

-- 10)
select *
from movie;

-- 2번
-- 회원 테이블 생성
create table members
(
    cNo  number(2),
    name varchar2(20)
);

-- 1)
alter table members
    add constraint members_key primary key (cNo);

--2)
create sequence seq_cno
    increment by 1
    start with 1;

insert into members
values (seq_cno.nextval, '박채정');
insert into members
values (seq_cno.nextval, '김태영');
insert into members
values (seq_cno.nextval, '고영재');
insert into members
values (seq_cno.nextval, '박준수');
insert into members
values (seq_cno.nextval, '이재신');

-- reserve table 생성
create table reserve
(
    rNo     number(2),
    mNo     char(1),
    cNo     number(2),
    seatNum number(2),
    rDate   date
);

-- 3)
alter table reserve
    add constraint reserve_key primary key (rNo);

create sequence seq_rno
    increment by 1
    start with 1;

alter table reserve
    add foreign key (mNo) references MOVIE (mNo);

alter table reserve
    add foreign key (cNo) references members (cNo);

insert into reserve
values (seq_rno.nextval, '1', 1, 1, '22/07/04');
insert into reserve
values (seq_rno.nextval, '2', 1, 2, '22/07/04');
insert into reserve
values (seq_rno.nextval, '4', 2, 1, '22/07/04');
insert into reserve
values (seq_rno.nextval, '4', 1, 2, '22/07/05');
insert into reserve
values (seq_rno.nextval, '1', 3, 1, '22/07/06');

-- 4)
select *
from USER_SEQUENCES;

-- 5)
select rNo, mNo, m.cNo, name, seatNum, rDate
from members m,
     reserve r
where m.cNo = r.cNo;

-- 6)
select *
from TAB;

-- 7)
create or replace view v_report
as
with r as (select mNo, count(*) cnt from reserve group by mNo),
     m as (select mNo from movie)
select m.mNo, nvl(r.cnt, 0) as cnt
from m,
     r
where m.mNo = r.mNo(+)
order by mNo;

-- 8)
select *
from USER_VIEWS;

-- 9)
drop view v_report;

-- 10)
select name
from members m,
     reserve r
where m.CNO = r.cNo
  and r.cNo = (select cNo
               from reserve r
               group by cNo
               having count(*) >= 2)
group by name;
