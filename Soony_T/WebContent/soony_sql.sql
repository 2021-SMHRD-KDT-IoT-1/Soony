CREATE TABLE mbr_info ( 
id VARCHAR2(50) PRIMARY KEY, 
pw VARCHAR2(50), 
tel VARCHAR2(50), 
addr VARCHAR2(50), 
email VARCHAR2(50),
nick VARCHAR2(50) );



CREATE TABLE str_cr ( 
str_num VARCHAR2(50) PRIMARY KEY, 
id VARCHAR2(50),
CONSTRAINT mbr_info_FK_id FOREIGN KEY(id) REFERENCES mbr_info(id) ON DELETE CASCADE);

CREATE TABLE alr (
alr_num NUMBER(10),
sys_date date
);

create sequence alr_num 
start with 1 
increment by 1;

CREATE TABLE fng(
fng_num NUMBER(20),
fng_name VARCHAR2(10)
);

create sequence fng_num
start with 1
increment by 1;


CREATE TABLE f_brd ( 
b_num NUMBER(10) PRIMARY KEY, 
b_username VARCHAR2(100), 
b_title VARCHAR2 (100), 
b_content VARCHAR2 (500), 
b_date DATE, 
b_view NUMBER(10),
b_like NUMBER(10),
b_photo VARCHAR2(100));

insert into f_brd values(b_num.nextval,'�����','�������� ���� ���ƿ�!','���� �������� SoonyCong�̳׿� �ʹ� ���Ѱ� ���ƿ� ��������',sysdate,'0','0',null);

create sequence b_num 
start with 1 
increment by 1;


CREATE TABLE f_brd_cmt ( 
b_num NUMBER(10), 
c_num NUMBER(10), 
c_username VARCHAR2(100),
 c_content NCLOB, 
c_date DATE, 
CONSTRAINT f_brd_cmt_FK_b_num FOREIGN KEY(b_num) REFERENCES f_brd(b_num) ON DELETE CASCADE );

create sequence c_num 
start with 1 
increment by 1;


CREATE TABLE faq ( 
f_num NUMBER(10) PRIMARY KEY, 
f_title VARCHAR2(100), 
f_content VARCHAR2(500));


create sequence f_num
start with 1
increment by 1;

insert into faq values(f_num.nextval,'[�Ϲ�] �ٴڿ� ������ ���� �ڱ��� ���� �� �ֳ���?','������ �� Ÿ�̾�� ���� �����ٴ�, �ռ� ���̳���Ʈ �� ����� �ٴ�, ī��Ʈ(������ ǥ��) � �������� �ʴ� �ڱ��� ���� �� �ֽ��ϴ�. �̷� �ٴ��� �ִ� �ǳ������� ������ ��뿡 �����Ͽ� �ֽʽÿ�.');
insert into faq values(f_num.nextval,'[�Ϲ�] ����� �������� ��� ��ô�ϳ���?','���ô� �������� ���� ���� �ε巯�� ������ ����� ���� ���� ���� õ���� ���� �ִ� ���⸦ ������ ������ �ּ���. �������� ��� ��ġ�� �����̵� Ʃ��� �ε巯�� �ַ� ���� �о���ϴ�. �ڵ�� ���� ������ �κ��� �������� ������ ��, ��ü ������ ����� ������ ������ �����մϴ�. �ڵ�� �ݼ� �κп� �񴰹��� ���� ���� �ʵ��� �����ϰ� �۾Ƴ� �ֽñ� �ٶ��ϴ�.');
insert into faq values(f_num.nextval,'[�Ϲ�] ����� �������� ���� ������ �ֳ���?','��ǰ�� ������ ����� ���, ����� �������� ������ ���� ���� ���ͷ� �����Ͻ� �� ������, ���� ��ǰ�� ���� ������ �ذ��� �� �ִ� ��ǰ�̳� ���� ��Ʈ�� �¶��� ���� ���ų�, � ��ǰ�� �����ؾ� ���� �𸣽ô� ��쿡�� ����� ������ �� ���񽺷� ���� ������ �ֽø� ���� ������ ��ü ��ǰ�� Ȯ���� �帳�ϴ�.');
insert into faq values(f_num.nextval,'[�Ϲ�] ����� �������� ��� ����� ������?','��� ����� ������ ��ǰ�� �״����忡�� �����εǸ� ����� �������� ���� ǰ�� �� �������� �����ϰ� �ִ� ����� ���忡�� ����˴ϴ�.');
insert into faq values(f_num.nextval,'[�Ϲ�] ����� �������� ������ȣ�� ��𿡼� Ȯ���� �� �ֳ���?','������ȣ�� ����� �������� ��Ʈ ���ʿ��� Ȯ�� �Ͻ� �� �ֽ��ϴ�.');
insert into faq values(f_num.nextval,'[�Ϲ�] ���̸� �޺��̳� �̼������κ��� ��ȣ�ϴ� ����� �����ΰ���?','����� �������� �ڵ� �� ĳ���Ǵ� ž���ϴ� ���̸� ��ü������ �����ְ� �Ǿ������� ������� ��ư �������� �ڵ����� ���� �մϴ�. �𷯱���� �߰��Ͽ� ������ ������ �µ��� ���� ���� �� �ֽ��ϴ�.');
insert into faq values(f_num.nextval,'[����/���] ��ǰ�� �߼۵� ���Ŀ��� ������� ������ �� ������','�̹� �ù��� ��ǰ�� �߼۵Ǿ� �̵��߿� �����Ƿ� ����� ������ �Ұ��մϴ�. �� ����� ������ �ʿ��Ͻôٸ� �ù�翡 Ȯ�����ּž� �մϴ�. �߰� ��ۺ�� �ð��� ������ �� �ִ� ���� ���� ��Ź�帳�ϴ�.');
insert into faq values(f_num.nextval,'[����/���] ������� �߸� �Է��ؼ� �ٸ������� ����� �Ǿ����','�����ͷ� �����ֽø� ��۵� ��ǰ�� ȸ���Ͽ� ���Ͻô� �ּ����� ��߼� ���� �ص帱 �� �ֽ��ϴ�. �ٸ� �� ��� �պ���ۺ� �߰��� �߻��Ǹ�, �ݼ� �� ���۱��� �ð��� �ټ� �ҿ�� �� �ִ� �� ���� ��Ź�帳�ϴ�..');
insert into faq values(f_num.nextval,'[����/���] ������� �����ϰ� ������ ��� �ؾ� �ϳ���','��ǰ����� ���¿����� �����͸� ���� ���氡���մϴ�. ');
insert into faq values(f_num.nextval,'[����/���] ��ϵ� ������ �帧�� ��ȸ���� �ʾƿ�','��ϵ� ������ �帧�� Ȯ�ε��� ���� ��� �븮�� ���ۻ�ǰ�� �� �ֽ��ϴ�. ��Ȯ�� Ȯ���� ���� �����ͷ� ���� ��Ź�帳�ϴ�.');
insert into faq values(f_num.nextval,'[����/���] ������ȸ�� ��ۿϷ�� Ȯ�εǴµ� ������ �������� ���߾��','�����ȣ ��ȸ�� Ȯ�εǴ� ��۱��а� ��ȭ�Ͽ� �����ġ Ȯ�κ�Ź�帳�ϴ�.(������/���ǵ �ðܵΰ�� ����)');
insert into faq values(f_num.nextval,'[����/���] ��ۺ�� ���ΰ���?','�⺻��۷�� 2,500�� �̸� �����갣(���ֵ�) �߰������ 3,000���Դϴ�.');
insert into faq values(f_num.nextval,'[����/���] ��۱Ⱓ�� �󸶳� �ɸ�����','15�ñ��� �Ա� Ȯ�ν� ������� �����մϴ�.');
insert into faq values(f_num.nextval,'[��ȯ/��ǰ/ȯ��] ��ǰ���� ������ �湮���� �ʾƿ�.','��ǰ���� �� ���� �湮�ϱ���� 2~3�� �ҿ�˴ϴ�. �ش� �Ⱓ ������ �湮���� ���� ��� �������� ���� �����ͷ� ���� ��Ź�帳�ϴ�.');
insert into faq values(f_num.nextval,'[��ȯ/��ǰ/ȯ��] ��ǰ�� �ļյǾ����. �±�ȯ �����Ѱ���.','�±�ȯ ������ �Ұ��մϴ�. ��ǰ ȸ�� �� �˼� ���� �� �� ��ǰ�� �߼۵ǹǷ� �ð� �ҿ�� �� �ֽ��ϴ�.');
insert into faq values(f_num.nextval,'[��ȯ/��ǰ/ȯ��] � ��� ��ǰ�� �Ұ��� �Ѱ���.','1. ��ǰ��û�Ⱓ�� ���� ��� (�ܼ� ������ ��� 7���̳�)  2. �������� å������ ��ǰ�� �Ѽյ� ��� 3. �������� ��� �Ǵ� �Ϻ� �Һ� ���Ͽ� ��ǰ�� ��ġ�� ������ ���ҵȰ�� (��ġ,������ ��ȯ/��ǰ�Ұ�)  4. ���ֹ� Ȯ�� �� ��ǰ���ۿ� ��ư��� �ֹ����ۻ�ǰ�� ���');
insert into faq values(f_num.nextval,'[��ȯ/��ǰ/ȯ��] �������� ���� ��ǰ/��ȯ �����Ѱ���','�ܼ��������� ���� ��ȯ/��ǰ�� ��� �ֹ��� 7�� �̳� �������ּž� �ϸ� �պ��ù�� 5,000��(ȭ���ù� ����)�� û���˴ϴ�. Ÿ�ù� �̿�� �߰���� �߻� �� �� �ֻ���� ��ȯ/��ǰ�� ��� ��Ȱ�� ������ ���� �����ͷ� ���� �� ���� ��Ź�帳�ϴ�.');
insert into faq values(f_num.nextval,'[��ȯ/��ǰ/ȯ��] ��ǰ�� �ļ� �Ǿ����ϴ�. ��� ó���ϳ���','�ļյ� ��ǰ�� ���� Ȯ�� �� ��ȯ/��ǰ ���� �����մϴ�. ������ �Ǵ� īī���� �������ֽø� ����ó�� ���͵帮�ڽ��ϴ�.');

CREATE TABLE qna ( 
q_num NUMBER(10) PRIMARY KEY, 
q_username VARCHAR2(100), 
q_title VARCHAR2(100), 
q_content VARCHAR2(500),
q_img VARCHAR2(2000),
q_date DATE );


create sequence q_num
start with 1
increment by 1;


CREATE TABLE rqna(
 q_num NUMBER(10),
 rq_num NUMBER(10),
 rq_title VARCHAR2(100),
 rq_content VARCHAR2(500),
 rq_date DATE,
  CONSTRAINT rqna_FK_q_num FOREIGN KEY(q_num)
  REFERENCES qna(q_num) ON DELETE CASCADE
);

create sequence rq_num
start with 1
increment by 1; 


select*from mbr_info;
select*from str_cr;
select*from f_brd;
select*from f_brd_cmt;
select*from faq;
select*from qna;
select*from rqna;



drop table str_cr;
drop table f_brd_cmt;
drop table faq;
drop table rqna;
drop table mbr_info;
drop table f_brd;
drop table qna; 
drop table fng;
drop table alr;

drop sequence b_num;
drop sequence c_num;
drop sequence f_num;
drop sequence q_num;
drop sequence rq_num;
drop sequence fng_num;
drop sequence alr_num;
                            


