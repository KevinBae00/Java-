CREATE TABLE   member   (
     id     varchar2(20)   NOT NULL,
     name     varchar2(20)   NOT NULL,
     pwd     varchar2(20)   NOT NULL,
     email     varchar2(20)   NOT NULL,
     tel     varchar2(20)   NOT NULL,
     hint     NUMBER(3)   NOT NULL,
     hint_asw     varchar2(20)   NOT NULL,
     scorea   NUMBER(5),
     scoreb   NUMBER(5),
     scorec   NUMBER(5),
     acount   NUMBER(4),
     bcount   NUMBER(4),
     ccount   NUMBER(4)
);

CREATE TABLE   vocaa   (
     word     varchar2(20)   NOT NULL,
     MEANINGA     varchar2(20)   NOT NULL,
     MEANINGB     varchar2(20)   NULL,
     MEANINGC     varchar2(20)   NULL,
     SIMILIAR_WORDA     varchar2(20)   NULL,
     SIMILIAR_WORDB     varchar2(20)   NULL,
     SIMILIAR_WORDC     varchar2(20)   NULL,
     DAY NUMBER(3) NOT NULL
);

CREATE TABLE   vocab   (
     word     varchar2(20)   NOT NULL,
     MEANINGA     varchar2(20)   NOT NULL,
     MEANINGB     varchar2(20)   NULL,
     MEANINGC     varchar2(20)   NULL,
     SIMILIAR_WORDA     varchar2(20)   NULL,
     SIMILIAR_WORDB     varchar2(20)   NULL,
     SIMILIAR_WORDC     varchar2(20)   NULL,
     DAY NUMBER(3) NOT NULL
);

CREATE TABLE   vocac   (
     word     varchar2(20)   NOT NULL,
     MEANINGA     varchar2(20)   NOT NULL,
     MEANINGB     varchar2(20)   NULL,
     MEANINGC     varchar2(20)   NULL,
     SIMILIAR_WORDA     varchar2(20)   NULL,
     SIMILIAR_WORDB     varchar2(20)   NULL,
     SIMILIAR_WORDC     varchar2(20)   NULL,
     DAY NUMBER(3) NOT NULL
);

CREATE TABLE   sel   (
     word     varchar2(20)   NOT NULL,
     MEANINGA     varchar2(20)   NOT NULL,
     MEANINGB     varchar2(20)   NULL,
     MEANINGC     varchar2(20)   NULL,
     SIMILIAR_WORDA     varchar2(20)   NULL,
     SIMILIAR_WORDB     varchar2(20)   NULL,
     SIMILIAR_WORDC     varchar2(20)   NULL,
     day     NUMBER(5)   NOT NULL,
     id     varchar2(20)   NOT NULL,
     word_level     NUMBER(3)   NULL,
     CONSTRAINT table_pk PRIMARY KEY(id, word)
);


ALTER TABLE   member   ADD CONSTRAINT   PK_MEMBER   PRIMARY KEY (
     id 
);

ALTER TABLE   vocaa   ADD CONSTRAINT   PK_VOCA   PRIMARY KEY (
     word 
);

ALTER TABLE   vocab   ADD CONSTRAINT   PK_VOCAB   PRIMARY KEY (
     word 
);

ALTER TABLE   vocac   ADD CONSTRAINT   PK_VOCAC   PRIMARY KEY (
     word 
);

ALTER TABLE sel ADD CONSTRAINT FK_member_TO_sel_1 FOREIGN KEY (
   id
)
REFERENCES member (
   id
); 

ALTER TABLE vocaa ADD DAY NUMBER(3) NOT NULL;
ALTER TABLE vocab ADD DAY NUMBER(3) NOT NULL;
ALTER TABLE vocac ADD DAY NUMBER(3) NOT NULL;