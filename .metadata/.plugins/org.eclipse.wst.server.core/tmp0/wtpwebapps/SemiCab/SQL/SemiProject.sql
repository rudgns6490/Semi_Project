
-- SemiProject --



-- 회원 테이블
create table ej_member
(member_num     number  not null  -- (P.K)  회원번호
, userid            varchar2(20) not null -- (U.K) 아이디 
, password            varchar2(200) not null-- 비밀번호 (암호화)
, name          nvarchar2(20) not null -- 이름
, birthday      varchar2(20)  not null -- 생년월일
, tel           varchar2(200)          -- null 허용 (암호화x)
, mobile        varchar2(200) not null -- 휴대전화 (암호화)
, gender        char(1)                -- 성별     남자 : 1 / 여자 : 2 
, email         nvarchar2(50) not null -- 이메일
, address       nvarchar2(50) not null -- 주소
, status        number(1) default 1     -- (C.K) 상태 (회원이라면:1 회원탈퇴:0)
, registerday   date default sysdate -- 가입일자
, constraint PK_ej_member_member_num primary key( member_num )  
, constraint UQ_ej_member_id unique (userid)
, constraint CK_ej_member_status check( status in(0,1) )
, constraint CK_ej_member_gender check( gender in('1','2') )
);

alter table ej_member
add gender char(1);


alter table ej_member
add constraint  CK_ej_member_gender check( gender in('1','2') );


commit;

select *
from ej_member;

select *
from user_cons_columns
where table_name = 'EJ_MEMBER';


-- 회원 테이블 시퀀스
create sequence seq_ej_member
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;






-- 제품상세이미지 테이블
create table ej_product_de_img
(product_de_img     nvarchar2(20)   --(P.K) 제품상세 이미지 번호, 시퀀스 아님 insert
, constraint PK_ej_product_de_img primary key(product_de_img)
);


-- 제품 테이블
create table ej_product
(product_num        nvarchar2(20) -- (P.K) 제품일련번호 , 시퀀스가 아님 
, product_class     nvarchar2(20) -- 제품종류
, fk_product_de_img nvarchar2(20) -- (F.K) 제품상세 이미지 번호 (제품상세이미지 테이블 -> product_de_img) 
, product_name      nvarchar2(20) -- 제품이름
, price             number not null  -- 단가
, constraint PK_ej_product_product_num primary key(product_num)     
, constraint FK_ej_product foreign key(fk_product_de_img) references ej_product_de_img (product_de_img)
);


-- 제품 테이블 시퀀스
create sequence seq_ej_product
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 제품 이미지 테이블
create table ej_product_img
(product_img        nvarchar2(20) not null -- (P.K) 제품이미지번호
, product_num       nvarchar2(20) not null -- (P.K , F.K) 제품일련번호 ( 제품테이블 => product_num )   
, constraint PK_ej_product_img primary key(product_img, product_num)
, constraint FK_ej_product_img foreign key(product_num) references ej_product(product_num)
);


-- 제품 상세정보 테이블
create table ej_product_detail
(product_de_num     number   not null      -- (P.K) 제품상세번호
, product_num       nvarchar2(20) not null -- (P.K , F.K) 제품일련번호 ( 제품테이블 => product_num ) 복합(P.K)
, color             nvarchar2(20) not null -- 색상
, constraint PK_ej_product_detail primary key(product_de_num, product_num)
, constraint FK_ej_product_detail foreign key(product_num) references ej_product(product_num) 
);

select *
from ej_product_detail;

-- 제품 상세정보 테이블 시퀀스
create sequence seq_product_detail
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

------------------------------------------------------------------------------------------------------

-- 장바구니
create table ej_cart
(order_num          nvarchar2(20) not null -- (P.K) 주문번호  < 시퀀스 + 문자 >
, fk_member_num     number not null -- (F.K) 회원번호 (회원 테이블 -> 회원번호)
, fk_product_num    nvarchar2(20) not null -- (F.K) 제품일련번호 (제품 테이블 -> 제품일련번호)
, order_price       number not null -- 장바구니 가격
, order_cnt         number not null -- 주문수량
, constraint PK_ej_cart_order_num primary key(order_num)
, constraint FK_ej_cart_fk_member_num foreign key(fk_member_num) references ej_member(member_num)
, constraint FK_ej_cart_fk_product_num foreign key(fk_product_num) references ej_product(product_num)
);

select *
from ej_cart;

-- 장바구니 테이블 시퀀스
create sequence seq_ej_cart
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 영수증 테이블
alter table ej_product_detail
add constraint UQ_product_de_num unique(product_de_num);

create table ej_billge
(billge_num         nvarchar2(20) not null -- (P.K) 영수증 번호 
, fk_product_de_num number         not null -- (F.K) 제품상세번호 ( 제품상세정보 테이블 => product_de_num )
, fk_product_num    nvarchar2(20)   not null -- (F.K) 제품일련번호 ( 제품 테이블 => product_num )
, constraint PK_ej_billge_billge_num primary key(billge_num)
, constraint FK_ej_billge foreign key(fk_product_de_num) references ej_product_detail(product_de_num)
, constraint FK_ej_billge_fk_product_num foreign key(fk_product_num) references ej_product(product_num)
);

select *
from ej_billge;


select *
from user_constraints A join user_cons_columns B
on A.constraint_name = B.constraint_name
where A.table_name = 'EJ_PRODUCT_DETAIL' 
and column_name = 'PRODUCT_DE_NUM';


select *
from user_constraints A join user_cons_columns B
on A.constraint_name = B.constraint_name
where A.table_name = 'EJ_PRODUCT' 
and column_name = 'PRODUCT_NUM';


-- 영수증 테이블 시퀀스
create sequence seq_ej_product_detail
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;



-- 주문내역
create table ej_orderlist
(orderlist_num      nvarchar2(20)  not null --(P.K) 주문내역일련번호
, fk_product_num    nvarchar2(20)  not null --(F.K) 제품일련번호 ( 제품 테이블 => product_num )
, fk_product_de_num number         not null --(F.K) 제품상세번호 ( 제품상세정보 테이블 => product_de_num )
, fk_billge_num     nvarchar2(20)  not null --(F.K) 영수증번호 ( 영수증 테이블 => billge_num )
, addrinfo          nvarchar2(20)  not null -- 배송지정보
, order_date        date default sysdate    -- 배송일자
, order_list        number          not null -- 주문수량
, total_price       number          not null -- 주문총액
, cancel_status     number(1) default 1      -- 취소여부 (취소가아니라면:1 취소:0)
, constraint PK_ej_orderlist_orderlist_num primary key(orderlist_num)
, constraint FK_ej_orderlist_fk_product_num foreign key(fk_product_num) references ej_product(product_num)
, constraint FK_ej_orderlist foreign key(fk_product_de_num) references ej_product_detail(product_de_num)
, constraint FK_ej_orderlist_fk_billge_num foreign key(fk_billge_num) references ej_billge(billge_num)
);

select *
from ej_orderlist;

select *
from user_cons_columns
where table_name = 'EJ_ORDERLIST';


-- 주문내역 테이블 시퀀스
create sequence seq_ej_orderlist
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

--------------------------------------------------------------------------------------------------------


--공지사항
create table ej_notice
(notice_num     number      not null
,fk_member_num     number      not null
,title          NVARCHAR2(30)   not null
,content        NVARCHAR2(1000)   not null
, constraint PK_ej_notice_notice_num primary key(notice_num)
, constraint FK_ej_notice_fk_member_num foreign key(fk_member_num) references ej_member(member_num)
);


drop table ej_notice;

-- 공지사항 테이블 시퀀스
create sequence seq_ej_notice
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- QnA
create table ej_qna
(qna_num           number      not null
,fk_member_num     number      not null
,title             NVARCHAR2(30)   not null
,content           NVARCHAR2(30)   not null
,write_date        DATE            not null
,read_cnt          NUMBER          not null
,write_pw          NVARCHAR2(20)      not null
, constraint PK_ej_qna_qna_num primary key(qna_num)
, constraint FK_ej_qna_fk_member_num foreign key(fk_member_num) references ej_member(member_num)
);

-- QnA 테이블 시퀀스
create sequence seq_ej_qna
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;





-- QnA 답글
create table ej_reqna
(reqna_num         number      not null
,fk_qna_num        number      not null
,fk_member_num     number      not null
,title             NVARCHAR2(30)   not null
,content           NVARCHAR2(30)   not null
,write_date        DATE            not null
,read_cnt          NUMBER          not null
,write_pw          NVARCHAR2(20)      not null
, constraint PK_ej_reqna_reqna_num primary key(reqna_num)
, constraint FK_ej_reqna_fk_qna_num foreign key(fk_qna_num ) references ej_qna(qna_num)
, constraint FK_ej_reqna_fk_member_num foreign key(fk_member_num) references ej_member(member_num)
);

-- QnA 답글 테이블 시퀀스
create sequence seq_ej_reqna
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;



-- 구매평
create table ej_review
(review_num           number           not null
,fk_member_num        number           not null
,fk_orderlist_num     NVARCHAR2(20)    not null
,title                NVARCHAR2(30)    not null
,content              NVARCHAR2(30)    not null
,write_date           DATE             not null
,contentment          NVARCHAR2(20)    not null
, constraint PK_ej_review_review_num primary key(review_num)
, constraint CK_ej_review_contentment check( contentment in(1,2,3,4,5) )
, constraint FK_ej_review_fk_member_num foreign key(fk_member_num) references ej_member(member_num)
, constraint FK_ej_review_fk_orderlist_num foreign key(fk_orderlist_num) references ej_orderlist(orderlist_num)
);

-- 구매평 테이블 시퀀스
create sequence seq_ej_review
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;




-- 댓글
create table ej_reple
(comment_num          number           not null
,fk_member_num        number           not null
,fk_review_num        number           not null
,content              NVARCHAR2(30)    not null
,write_date           DATE             not null
, constraint PK_ej_reple_comment_num primary key(comment_num)
, constraint FK_ej_reple_fk_member_num foreign key(fk_member_num) references ej_member(member_num)
, constraint FK_ej_reple_fk_review_num foreign key(fk_review_num) references ej_review(review_num)
);


-- 댓글 테이블 시퀀스
create sequence seq_ej_reple
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


select *
from user_tables;


delete from ej_cart
where fk_member_num = '20';

commit;

select * from ej_cart;

select 'test001' as product_num
from dual;


select 165 AS order_num, '20' AS fk_member_num,'test004' as fk_product_num,'78000' as order_price, '1'as order_cnt,'EMOJEMO-COTTON FONT-STRAP RING BALL CAP' as product_name,'WT' as color,'product04.png' as product_img
from dual;


String sql = "select 165 AS order_num, '20' AS fk_member_num,'test004' as fk_product_num,'78000' as order_price, '1'as order_cnt,'EMOJEMO-COTTON FONT-STRAP RING BALL CAP' as product_name,'WT' as color,'product04.png' as product_img\n"+
"from dual";