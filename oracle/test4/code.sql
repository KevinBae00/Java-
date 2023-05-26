-- 1.
create table member
(
    id   varchar2(20) primary key,
    name varchar2(20)
);

create table book
(
    book_num     number(5) primary key,
    book_name    varchar2(20),
    author       varchar2(20),
    publish_name varchar2(20),
    publish_year date,
    isbn         varchar2(20),
    count        number(4)
);

create table reservation
(
    num      number(5) primary key,
    rdate    date,
    id       varchar2(20) references member (id),
    book_num number(5) references book (book_num)
);

create table rental
(
    rent_num    number(5) primary key,
    rent_count  number(2),
    rent_date   date,
    return_date date,
    delay_count number(2),
    id          varchar2(20) references member (id),
    book_num    number(5) references book (book_num)
);

-- 3번
-- 1)
create sequence seq_book
increment by 1
start with 1
MAXVALUE 99999;

create sequence seq_rental
increment by 5
start with 500
MAXVALUE 99999;

create sequence seq_reservation
increment by 10
start with 2000
MAXVALUE 99999;

-- 2)
insert into member
VALUES ('hi','nice');

insert into member
VALUES ('lol','zerg');

insert into book    
values (seq_book.nextval, '어쩌다 디자인', '다니엘 남궁','어쩌다 출판사',to_date('2013-05-23','YYYY/MM/DD'),'3847583728239',4);

insert into book    
values (seq_book.nextval, '노는게 좋아', '잭 더 리퍼','어쩌다 출판사',to_date('2013-07-23','YYYY/MM/DD'),'994758328239',44);

insert into rental
values (seq_rental.nextval, 3, to_date('2017-05-23','YYYY/MM/DD'),to_date('2017-08-23','YYYY/MM/DD'),2,'hi',1);

insert into rental
values (seq_rental.nextval, 5, to_date('2020-05-23','YYYY/MM/DD'),to_date('2022-08-23','YYYY/MM/DD'),23,'lol',2);

insert into reservation
values (seq_reservation.nextval, to_date('2021-05-22','YYYY/MM/DD'),'lol',2);

insert into reservation
values (seq_reservation.nextval, to_date('2019-05-22','YYYY/MM/DD'),'hi',1);

commit;

--3)
set serveroutput on;

create or replace procedure pro_test1
    is
   type member_table is table of member%rowtype
        index by pls_integer;

    type re_table is table of reservation%rowtype
        index by pls_integer;
        
    member_arr      member_table;
    re_arr     re_table;
    idx          pls_integer := 0;
begin
    for i in (select member.id,name,num,rdate,book_num
              from member,reservation
              where member.id = reservation.id)
        loop
            idx := idx + 1;
            member_arr(idx).id := i.id;
            member_arr(idx).name := i.name;
            re_arr(idx).num := i.num;
            re_arr(idx).rdate := i.rdate;
            re_arr(idx).book_num := i.book_num;
            dbms_output.put_line('회원아이디: '
                ||member_arr(idx).id
                || ', 이름: '
                || member_arr(idx).name
                || ', 예약번호: '
                || re_arr(idx).num
                || ' 예약일시: '
                || re_arr(idx).rdate
                || ' 도서번호: '
                || re_arr(idx).book_num);
        end loop;    
end;
/

execute pro_test1;


