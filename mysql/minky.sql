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

show tables ;
desc customer;