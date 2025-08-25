create database meesho;
show databases;
use meesho;

create table category (
      cid int primary key,
      cname varchar(50) not null
);

insert into category values (2023,'electronics');
insert into category values (2024,'furniture');
insert into category values (2025,'mobiles');

select * from category;

create table product (
       pid int primary key,
       pname varchar(50) not null,
       cid int not null,
       foreign key (cid) references category(cid)
);

insert into product values (01,'sonata smart watch',2023);
insert into product values (02,'wooden table',2024);
insert into product values (03,'oneplus 13R',2025);

select * from product;

update category set cid=2025 where cid=2023;
