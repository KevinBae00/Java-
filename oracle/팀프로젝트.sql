CREATE TABLE  customer  (
    cstId    number(10)      NOT NULL,
    name    varchar(20)      NOT NULL,
    grade    number(10)      NOT NULL
);

drop table custom;

CREATE TABLE  product  (
    proid    number(10)      NOT NULL,
    cstId    number(10)      NOT NULL,
    delno    number(10)      NOT NULL,
    price    number(10)      NOT NULL
);

CREATE TABLE  delivery  (
    delno    number(10)      NOT NULL,
    loc    varchar(20)      NOT NULL
);

ALTER TABLE  customer  ADD CONSTRAINT  PK_CUSTOMER  PRIMARY KEY (
    cstId
);

ALTER TABLE  product  ADD CONSTRAINT  PK_PRODUCT  PRIMARY KEY (
    proid
);

ALTER TABLE  delivery  ADD CONSTRAINT  PK_DELIVERY  PRIMARY KEY (
    delno
);

ALTER TABLE  product  ADD CONSTRAINT  FK_customer_TO_product_1  FOREIGN KEY (
    cstId
)
REFERENCES  customer  (
    cstId
)on delete cascade;

ALTER TABLE  product  ADD CONSTRAINT  FK_delivery_TO_product_1  FOREIGN KEY (
    delno
)
REFERENCES  delivery  (
    delno
)on delete cascade;
