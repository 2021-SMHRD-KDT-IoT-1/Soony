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

insert into f_brd values(b_num.nextval,'고양이','유모차가 정말 좋아요!','역시 유모차는 SoonyCong이네요 너무 편리한거 같아요 ㅎㅎㅎㅎ',sysdate,'0','0',null);

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

insert into faq values(f_num.nextval,'[일반] 바닥에 유모차 바퀴 자국이 생길 수 있나요?','검은색 고무 타이어는 나무 세공바닥, 합성 래미네이트 및 리놀륨 바닥, 카페트(유기질 표면) 등에 지워지지 않는 자국을 남길 수 있습니다. 이런 바닥이 있는 실내에서는 유모차 사용에 주의하여 주십시오.');
insert into faq values(f_num.nextval,'[일반] 콩순이 유모차는 어떻게 세척하나요?','섀시는 미지근한 물을 뭍힌 부드러운 수건을 사용해 닦은 다음 마른 천으로 남아 있는 물기를 완전히 제거해 주세요. 프레임의 기계 장치와 슬라이딩 튜브는 부드러운 솔로 흙을 털어냅니다. 핸들바 폼의 오염된 부분은 스펀지와 따뜻한 물, 액체 세제를 사용해 가볍게 문질러 제거합니다. 핸들바 금속 부분에 비눗물이 남아 있지 않도록 깨끗하게 닦아내 주시기 바랍니다.');
insert into faq values(f_num.nextval,'[일반] 콩순이 유모차는 수리 받을수 있나요?','제품에 문제가 생기신 경우, 콩순이 유모차의 인증을 받은 서비스 센터로 문의하실 수 있으며, 만약 제품에 생긴 문제를 해결할 수 있는 부품이나 서비스 세트가 온라인 스토어에 없거나, 어떤 부품을 구입해야 할지 모르시는 경우에는 콩순이 유모차 고객 서비스로 연락 연락해 주시면 구매 가능한 교체 부품을 확인해 드립니다.');
insert into faq values(f_num.nextval,'[일반] 콩순이 유모차는 어디서 만들어 지나요?','모든 콩순이 유모차 제품은 네덜란드에서 디자인되며 콩순이 유모차가 직접 품질 및 내구성을 관리하고 있는 콩순이 공장에서 생산됩니다.');
insert into faq values(f_num.nextval,'[일반] 콩순이 유모차의 고유번호는 어디에서 확인할 수 있나요?','고유번호는 콩순이 유모차의 시트 옆쪽에서 확인 하실 수 있습니다.');
insert into faq values(f_num.nextval,'[일반] 아이를 햇빛이나 미세먼지로부터 보호하는 방법은 무엇인가요?','콩순이 유모차의 자동 썬 캐노피는 탑승하는 아이를 전체적으로 감싸주게 되어있으며 사용자의 버튼 조작으로 자동으로 동작 합니다. 쿨러기능을 추가하여 유모차 내부의 온도를 쉽게 낮출 수 있습니다.');
insert into faq values(f_num.nextval,'[결제/배송] 상품이 발송된 이후에는 배송지를 변경할 수 없나요','이미 택배사로 상품이 발송되어 이동중에 있으므로 배송지 변경은 불가합니다. 꼭 배송지 변경이 필요하시다면 택배사에 확인해주셔야 합니다. 추가 배송비와 시간이 지연될 수 있는 점은 참고 부탁드립니다.');
insert into faq values(f_num.nextval,'[결제/배송] 배송지를 잘못 입력해서 다른곳으로 배송이 되었어요','고객센터로 문의주시면 배송된 상품을 회수하여 원하시는 주소지로 재발송 접수 해드릴 수 있습니다. 다만 이 경우 왕복배송비가 추가로 발생되며, 반송 후 재배송까지 시간이 다소 소요될 수 있는 점 참고 부탁드립니다..');
insert into faq values(f_num.nextval,'[결제/배송] 배송지를 변경하고 싶은데 어떻게 해야 하나요','상품출고전 상태에서만 고객센터를 통해 변경가능합니다. ');
insert into faq values(f_num.nextval,'[결제/배송] 등록된 송장의 흐름이 조회되지 않아요','등록된 송장의 흐름이 확인되지 않을 경우 대리점 직송상품일 수 있습니다. 정확한 확인을 위해 고객센터로 연락 부탁드립니다.');
insert into faq values(f_num.nextval,'[결제/배송] 송장조회시 배송완료로 확인되는데 물건을 수령하지 못했어요','송장번호 조회시 확인되는 배송기사분과 통화하여 배송위치 확인부탁드립니다.(편의점/경비실등에 맡겨두경우 있음)');
insert into faq values(f_num.nextval,'[결제/배송] 배송비는 얼마인가요?','기본배송료는 2,500원 이며 도서산간(제주도) 추가비용은 3,000원입니다.');
insert into faq values(f_num.nextval,'[결제/배송] 배송기간이 얼마나 걸리나요','15시까지 입금 확인시 당일출고 가능합니다.');
insert into faq values(f_num.nextval,'[교환/반품/환불] 반품수거 기사님이 방문하지 않아요.','반품접수 후 기사님 방문하기까지 2~3일 소요됩니다. 해당 기간 내에도 방문하지 않을 경우 재접수를 위해 고객센터로 연락 부탁드립니다.');
insert into faq values(f_num.nextval,'[교환/반품/환불] 상품이 파손되었어요. 맞교환 가능한가요.','맞교환 접수는 불가합니다. 상품 회수 및 검수 진행 후 새 상품이 발송되므로 시간 소요될 수 있습니다.');
insert into faq values(f_num.nextval,'[교환/반품/환불] 어떤 경우 반품이 불가능 한가요.','1. 반품요청기간이 지난 경우 (단순 변심일 경우 7일이내)  2. 구매자의 책임으로 상품이 훼손된 경우 3. 구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저희 감소된경우 (설치,개봉시 교환/반품불가)  4. 고객주문 확인 후 상품제작에 들아가는 주문제작상품의 경우');
insert into faq values(f_num.nextval,'[교환/반품/환불] 변심으로 인한 반품/교환 가능한가요','단순변심으로 인한 교환/반품의 경우 주문후 7일 이내 접수해주셔야 하며 왕복택배비 5,000원(화물택배 제외)이 청구됩니다. 타택배 이용시 추가비용 발생 될 수 있사오니 교환/반품의 경우 원활한 진행을 위해 고객센터로 연락 후 접수 부탁드립니다.');
insert into faq values(f_num.nextval,'[교환/반품/환불] 제품이 파손 되었습니다. 어떻게 처리하나요','파손된 상품의 사진 확인 후 교환/반품 진행 가능합니다. 고객센터 또는 카카오톡 문의해주시면 빠른처리 도와드리겠습니다.');

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
                            


