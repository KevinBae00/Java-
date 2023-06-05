CREATE TABLE student (
	studentnum	varchar2(10)		NOT NULL,
	age	number(2)		NOT NULL,
	gender	varchar2(6)		NOT NULL,
	stuname	varchar2(30)		NOT NULL,
	hobby	varchar2(30)		NULL
);

CREATE TABLE subject (
	subjectnum	varchar2(10)		NOT NULL,
	subname	varchar2(20)		NOT NULL,
	star	number(2,1)		NULL,
	professor	varchar2(30)		NOT NULL
);

CREATE TABLE registration (
	seq	number(5)		NOT NULL,
	studentnum	varchar2(10)		NOT NULL,
	subjectnum	varchar2(10)		NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_STUDENT PRIMARY KEY (
	studentnum
);

ALTER TABLE subject ADD CONSTRAINT PK_SUBJECT PRIMARY KEY (
	subjectnum
);

ALTER TABLE registration ADD CONSTRAINT PK_REGISTRATION PRIMARY KEY (
	seq
);

ALTER TABLE registration ADD CONSTRAINT FK_student_TO_registration_1 FOREIGN KEY (
	studentnum
)
REFERENCES student (
	studentnum
)ON DELETE CASCADE;

ALTER TABLE registration ADD CONSTRAINT FK_subject_TO_registration_1 FOREIGN KEY (
	subjectnum
)
REFERENCES subject (
	subjectnum
)ON DELETE CASCADE;

insert into student
values ('22000111',25,'male','오하성',NULL );

insert into subject
values ('IBK23483','상식의 이해','4.7','무상식교수' );

insert into registration
values(1,'22000111','IBK23483');

select * from student;

update student
set hobby = '축구'
where studentnum = '22000111';

delete
from student;

