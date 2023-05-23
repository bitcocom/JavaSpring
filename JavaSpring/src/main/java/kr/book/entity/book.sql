-- 고객정보 명세서
create table member_tbl(
  cust_no int not null,
  cust_name varchar(20),
  phone varchar(20),
  join_date datetime default now(),
  cust_email varchar(50),
  grade varchar(50),
  primary key(cust_no)
)
insert into member_tbl(cust_no, cust_name, phone, cust_email, grade)
values(100001,'박매일','010-1111-1111','bit01@naver.com','P');

insert into member_tbl(cust_no, cust_name, phone, cust_email, grade)
values(100002,'이믿음','010-1111-1112','bit02@naver.com','G');

insert into member_tbl(cust_no, cust_name, phone, cust_email, grade)
values(100003,'박축복','010-1111-1113','bit03@naver.com','S');

insert into member_tbl(cust_no, cust_name, phone, cust_email, grade)
values(100004,'나소원','010-1111-1114','bit04@naver.com','P');

insert into member_tbl(cust_no, cust_name, phone, cust_email, grade)
values(100005,'김행복','010-1111-1115','bit05@naver.com','G');

select * from member_tbl;

-- 고객대여정보 명세서
create table rent_tbl(
  cust_no int not null,
  rent_no int not null,
  book_code varchar(20),
  rent_price int, 
  rent_date datetime default now(),
  primary key(rent_no)
);

insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100001,20230001,'A001',2300);
insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100001,20230002,'A002',1300);
insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100001,20230003,'A003',2100);

insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100002,20230004,'A004',1600);
insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100002,20230005,'A005',1800);

insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100003,20230006,'A006',1500);

insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100004,20230007,'A007',2000);
insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100004,20230008,'A008',2300);
insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100004,20230009,'A009',1500);
insert into rent_tbl(cust_no, rent_no, book_code, rent_price)
values(100004,20230010,'A010',2300);

select * from rent_tbl;


