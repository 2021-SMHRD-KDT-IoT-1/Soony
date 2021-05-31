CREATE TABLE mbr_info ( 
id VARCHAR2(50) PRIMARY KEY, 
pw VARCHAR2(50), 
tel VARCHAR2(50), 
addr VARCHAR2(50), 
email VARCHAR2(50),
nick VARCHAR2(50) );



CREATE TABLE str_cr ( 
str_num VARCHAR2(50) PRIMARY KEY, 
fng VARCHAR2(1000), 
alr NUMBER(10),
id VARCHAR2(50),
CONSTRAINT mbr_info_FK_id FOREIGN KEY(id) REFERENCES mbr_info(id) ON DELETE CASCADE);



CREATE TABLE f_brd ( 
b_num NUMBER(10) PRIMARY KEY, 
b_username VARCHAR2(100), 
b_title VARCHAR2 (100), 
b_content VARCHAR2 (500), 
b_date DATE, 
b_view NUMBER(10),
b_like NUMBER(10));

create sequence b_num 
start with 1 
increment by 1
drop sequence b_num
insert into f_brd values(b_num.nextval, 'test1','test1','test1',sysdate,9,9);

select * from f_brd

CREATE TABLE f_brd_cmt ( 
b_num NUMBER(10), 
c_num NUMBER(10), 
c_username VARCHAR2(100),
 c_content NCLOB, 
c_date DATE, 
CONSTRAINT f_brd_cmt_FK_b_num FOREIGN KEY(b_num) REFERENCES f_brd(b_num) ON DELETE CASCADE );

select c_content from f_brd_cmt  where b_num=1

CREATE TABLE faq ( 
f_num NUMBER(10) PRIMARY KEY, 
f_title VARCHAR2(100), 
f_content VARCHAR2(500),
f_img VARCHAR2(2000));



CREATE TABLE qna ( 
q_num NUMBER(10) PRIMARY KEY, 
q_username VARCHAR2(100), 
q_password VARCHAR2(15), 
q_title VARCHAR2(100), 
q_content VARCHAR2(500), 
q_date DATE );



CREATE TABLE rqna(
 q_num NUMBER(10),
 rq_num NUMBER(10),
 rq_title VARCHAR2(100),
 rq_content VARCHAR2(500),
 rq_date DATE,
  CONSTRAINT rqna_FK_q_num FOREIGN KEY(q_num)
  REFERENCES qna(q_num) ON DELETE CASCADE
);

select*from mbr_info;
select*from str_cr;
select*from f_brd;
select*from f_brd_cmt;
select*from faq;
select*from qna;
select*from rqna;


/*
drop table str_cr;
drop table f_brd_cmt;
drop table faq;
drop table rqna;
drop table mbr_info;
drop table f_brd;
drop table qna; 
                             */


