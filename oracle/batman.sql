CREATE TABLE dept (
    deptno NUMBER(2, 0) NOT NULL,
    dname  VARCHAR2(14) NULL,
    loc    VARCHAR2(10) NULL
);

CREATE TABLE emp (
    empno    NUMBER(4, 0) NOT NULL,
    ename    VARCHAR2(10) NULL,
    job      VARCHAR2(9) NULL,
    mgr      NUMBER(4, 0) NULL,
    hiredate DATE NULL,
    sal      NUMBER(7, 2) NULL,
    comm     NUMBER(7, 2) NULL,
    deptno   NUMBER(2, 0) NOT NULL
);

ALTER TABLE dept ADD CONSTRAINT pk_dept PRIMARY KEY ( deptno );

ALTER TABLE emp ADD CONSTRAINT pk_emp PRIMARY KEY ( empno );

ALTER TABLE emp
    ADD CONSTRAINT fk_dept_to_emp_1 FOREIGN KEY ( deptno )
        REFERENCES dept ( deptno );

CREATE TABLE member (
    mnum  NUMBER(4) NOT NULL,
    id    NUMBER(13) NULL,
    addr  VARCHAR2(30) NULL,
    name  VARCHAR2(20) NOT NULL,
    grade NUMBER(2) NULL,
    phone NUMBER(11) NULL,
    email VARCHAR2(30) NULL,
    bill  NUMBER(5) NULL
);

CREATE TABLE lend (
    lnum     NUMBER(4) NOT NULL,
    bnum     NUMBER(5) NULL,
    ldate    DATE NULL,
    bdate    DATE NULL,
    subcheck CHAR(1) NULL,
    ext      CHAR(1) NULL,
    mnum     NUMBER(4) NOT NULL
);

ALTER TABLE member ADD CONSTRAINT pk_member PRIMARY KEY ( mnum );

ALTER TABLE lend ADD CONSTRAINT pk_lend PRIMARY KEY ( lnum );

ALTER TABLE lend
    ADD CONSTRAINT fk_member_to_lend_1 FOREIGN KEY ( mnum )
        REFERENCES member ( mnum );

INSERT INTO member (
    mnum,
    id,
    addr,
    name,
    grade,
    phone,
    email,
    bill
) VALUES (
    1,
    1,
    'Seoul',
    'kev',
    2,
    01012345678,
    'aaa@a.a',
    100
);

INSERT INTO lend (
    lnum,
    bnum,
    bdate,
    ext,
    ldate,
    mnum,
    subcheck
) VALUES (
    1,
    1,
    '20140111',
    'T',
    '20150203',
    1,
    'T'
);

SELECT
    m.mnum,
    id,
    addr,
    name,
    grade,
    phone,
    email,
    bill,
    lnum,
    bnum,
    bdate,
    ext,
    ldate,
    subcheck
FROM
    member m,
    lend   l
WHERE
    m.mnum = l.mnum;

CREATE TABLE mem (
    memno   NUMBER(4) NOT NULL,
    mname   VARCHAR2(14) NOT NULL,
    ssno    NUMBER(10) NOT NULL,
    grade   NUMBER(2) NULL,
    address VARCHAR2(20) NOT NULL,
    phoneno NUMBER(15) NULL,
    email   VARCHAR2(20) NULL,
    latef   NUMBER(5) NULL
);

CREATE TABLE rental (
    rentno     VARCHAR2(10) NOT NULL,
    bookno     VARCHAR2(10) NOT NULL,
    rentaldate DATE NULL,
    returndate DATE NULL,
    apprent    VARCHAR2(4) NULL,
    extend     DATE NULL,
    memno      NUMBER(4) NOT NULL
);

ALTER TABLE mem ADD CONSTRAINT pk_mem PRIMARY KEY ( memno );

ALTER TABLE rental ADD CONSTRAINT pk_rental PRIMARY KEY ( rentno );

ALTER TABLE rental
    ADD CONSTRAINT fk_mem_to_rental_1 FOREIGN KEY ( memno )
REFERENCES mem ( memno );

INSERT INTO mem VALUES (
    111,
    'hong',
    111111,
    1,
    'seoul',
    123,
    'aa@aa.com',
    0
);

SELECT *
FROM mem;
    
insert into rental
values('1000','2023100',sysdate,sysdate + 14,'0',null,111);

select * from rental;

update rental
set returndate = returndate+7, extend = returndate+7
where rentno = '1000';