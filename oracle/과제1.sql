CREATE TABLE movie
(
    code       number(2)    NOT NULL,
    title      varchar2(30) NOT NULL,
    time_start date         NOT NULL,
    time_end   date         NOT NULL,
    country    varchar2(20) NULL,
    actor      varchar2(30) NULL,
    price      NUMBER(5)    NULL
);

CREATE TABLE Ticketing
(
    num      number(5)    NOT NULL,
    nickname varchar2(20) NULL,
    age      number(3)    NULL,
    code     number(2)    NOT NULL
);

ALTER TABLE movie
    ADD CONSTRAINT PK_MOVIE PRIMARY KEY (
                                         code
        );

ALTER TABLE Ticketing
    ADD CONSTRAINT PK_TICKETING PRIMARY KEY (
                                             num
        );

ALTER TABLE Ticketing
    ADD CONSTRAINT FK_movie_TO_Ticketing_1 FOREIGN KEY (
                                                        code
        )
        REFERENCES movie (
                          code
            );

ALTER session set NLS_DATE_FORMAT = 'YYYY-MM-DD HH:MI:SS';

insert into movie
values (01, '격한직업', '2023-05-17 09:59:10', '2023-05-17 12:10:00', '한국', '뉴승늉', 20000);
insert into movie
values (02, '미국대장', '2023-05-19 11:30:00', '2023-05-19 02:10:00', '미국', '크로스 에바스', 26000);
insert into movie
values (03, '철인', '2023-05-22 05:40:10', '2023-05-22 07:10:00', '미국', '하워드 별', 30000);

select *
from movie;

insert into Ticketing
values (26, 'TT', 12, 1);

insert into Ticketing
values (38, '아프니청춘', 78, 3);

insert into Ticketing
values (99, '신사동 댄스킹', 45, 3);

select *
from Ticketing;

select m.code,
       title,
       time_start,
       time_end,
       country,
       actor,
       price,
       num,
       nickname,
       age
from movie m,
     Ticketing t
where m.code = t.code;