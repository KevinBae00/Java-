use mydata;

#숫자 : int, float
#문자 : char, varchar
#날짜 : date

create table customer
(
    no    int         not null auto_increment,
    name  char(20),
    age   int,
    phone varchar(20),
    email varchar(20) not null,
    primary key (no)
);

show tables;
desc customer;

insert into customer(name, age, phone, email)
values ('Hong', 10, '01011112222', 'aaa@aaa.com');

insert into customer(name, age, phone, email)
values ('Kim', 20, '01011112222', 'bbb@bbb.com');

update customer
set email = 'a@a.com'
where no = 1;

delete
from customer
where no = 2;

commit;

select *
from customer;