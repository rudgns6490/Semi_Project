------ *** JSP & Sevlet MyMVC 에서 작업한 것 *** -------

show user;
-- USER이(가) "MYORAUSER"입니다.

create table bootstrap_image
(imgno           number not null
,imgfilename     varchar2(100) not null
,constraint PK_bootstrap_image primary key(imgno)
);

create sequence seq_bootstrap_image
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into bootstrap_image(imgno, imgfilename) values(seq_bootstrap_image.nextval, '미샤.png');  
insert into bootstrap_image(imgno, imgfilename) values(seq_bootstrap_image.nextval, '원더플레이스.png'); 
insert into bootstrap_image(imgno, imgfilename) values(seq_bootstrap_image.nextval, '레노보.png'); 
insert into bootstrap_image(imgno, imgfilename) values(seq_bootstrap_image.nextval, '동원.png'); 

commit;

select imgno, imgfilename 
from bootstrap_image
order by imgno asc;


--- *** 회원 테이블 생성 *** ---  
drop table jsp_member purge;

create table jsp_member
(idx          number(10)    not null     -- 회원번호(시퀀스로 데이터가 들어온다)
,userid       varchar2(20)  not null     -- 회원아이디
,name         varchar2(30)  not null     -- 회원명
,pwd          varchar2(200) not null     -- 비밀번호 (SHA-256 암호화 대상)
,email        varchar2(200) not null     -- 이메일   (AES-256 암호화/복호화 대상)
,hp1          char(3)                    -- 휴대폰
,hp2          varchar2(200)              --         (AES-256 암호화/복호화 대상) 
,hp3          varchar2(200)              --         (AES-256 암호화/복호화 대상)
,post1        char(3)                    -- 우편번호
,post2        char(3) 
,addr1        varchar2(200)              -- 주소
,addr2        varchar2(200)  
,gender       char(1)                    -- 성별     남자 : 1 / 여자 : 2
,birthday     varchar2(8)                -- 생년월일 
,coin         number default 0           -- 코인액
,point        number default 0           -- 포인트 
,registerday  date default sysdate       -- 가입일자
,status       number(1) default 1        -- 회원탈퇴유무   1:사용가능(가입중) / 0:사용불능(탈퇴) 
,lastLoginDate date default sysdate      -- 마지막으로 로그인 한 날짜시간 기록용
,lastPwdChangeDate date default sysdate  -- 마지막으로 암호를 변경한 날짜시간 기록용
,clientip     varchar2(20)               -- 클라이언트의 IP 주소
,constraint   PK_jsp_member_idx primary key(idx)
,constraint   UQ_jsp_member_userid unique(userid)
,constraint   CK_jsp_member_gender check( gender in('1','2') ) 
,constraint   CK_jsp_member_status check( status in(0,1) ) 
);

create sequence seq_jsp_member
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into jsp_member(idx, userid, name, pwd, email)
values(1,'leess','이순신','qwer1234$','leess@gmail.com');

commit;

select *
from jsp_member
order by idx;

delete from jsp_member;
commit;

select idx, userid, name, email, hp1, hp2, hp3, post1, post2, addr1, addr2, gender   
     , substr(birthday,1,4) AS birthyyyy, substr(birthday,5,2) AS birthmm, substr(birthday, 7) AS birthdd  
     , coin, point, to_char(registerday,'yyyy-mm-dd') AS registerday  
     , trunc( months_between(sysdate, lastPwdChangeDate) ) AS pwdchangegap  
     , trunc( months_between(sysdate, lastLoginDate) ) AS lastlogindategap 
from jsp_member
order by idx asc;


update jsp_member set coin=5000000
where userid = 'leess';

commit;

update jsp_member set registerday = add_months(registerday, -10)
                    , lastpwdchangedate = add_months(lastpwdchangedate, -10)
where userid = 'leess';                    

commit;

update jsp_member set registerday = add_months(registerday, -20)
                    , lastlogindate = add_months(lastlogindate, -14)
where userid = 'hongkd';                    

commit;

desc jsp_member;

-- >> 시험 << --
-- ※ 먼저 여러분의 데이터베이스에 아래의 지문대로 ncstest_member 테이블을 생성한후 요구사항에 응해야 한다. --
create table ncstest_member
(userId varchar2(20) not null
,userName varchar2(20) not null
,birthday varchar2(10) not null
,gender number(1) not null
,registerDay date default sysdate
,constraint PK_ncstest_member_userid primary key(userId)
,constraint CK_ncstest_member_gender check( gender in(1,2) )
);



desc jsp_member;


create or replace procedure pcd_jsp_member_insert
(p_userid  IN  varchar2
,p_name    IN  varchar2
,p_gender  IN  char)
is
begin
    for i in 1..100 loop 
        insert into jsp_member(idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2, gender, birthday, coin, point, registerday, status, lastlogindate, lastpwdchangedate, clientip) 
        values(seq_jsp_member.nextval, p_userid||i, p_name||i, '9695b88a59a1610320897fa84cb7e144cc51f2984520efb77111d94b402a8382', 'KaDz2RcfIWg51HF/fFWvOxLoX5Y6H9S5+AmisF8ovv0=' , '010', '5vlo5ZBnIbLMyMz3NtK38A==', 'TYENQOsy0AExa9/mtma0ow==' , '123', '456', '서울 송파구 오금로 95', '456호', p_gender, '19960920', default, default, default, default, default, default, '127.0.0.1');         
    end loop;
end pcd_jsp_member_insert;   
-- Procedure PCD_JSP_MEMBER_INSERT이(가) 컴파일되었습니다.  

exec pcd_jsp_member_insert('kangkc', '강감찬', '1');
-- PL/SQL 프로시저가 성공적으로 완료되었습니다.

commit;

select *
from jsp_member
order by idx asc;

exec pcd_jsp_member_insert('parkby', '박보영', '2');
-- PL/SQL 프로시저가 성공적으로 완료되었습니다.

commit;

insert into jsp_member(idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2, gender, birthday, coin, point, registerday, status, lastlogindate, lastpwdchangedate, clientip) 
values(seq_jsp_member.nextval, 'youjs1', '유재석1', '9695b88a59a1610320897fa84cb7e144cc51f2984520efb77111d94b402a8382', 'KaDz2RcfIWg51HF/fFWvOxLoX5Y6H9S5+AmisF8ovv0=' , '010', '5vlo5ZBnIbLMyMz3NtK38A==', 'TYENQOsy0AExa9/mtma0ow==' , '123', '456', '서울 송파구 오금로 95', '456호', '1', '19960920', default, default, default, default, default, default, '127.0.0.1');

insert into jsp_member(idx, userid, name, pwd, email, hp1, hp2, hp3, post1, post2, addr1, addr2, gender, birthday, coin, point, registerday, status, lastlogindate, lastpwdchangedate, clientip) 
values(seq_jsp_member.nextval, 'youjs2', '유재석2', '9695b88a59a1610320897fa84cb7e144cc51f2984520efb77111d94b402a8382', 'KaDz2RcfIWg51HF/fFWvOxLoX5Y6H9S5+AmisF8ovv0=' , '010', '5vlo5ZBnIbLMyMz3NtK38A==', 'TYENQOsy0AExa9/mtma0ow==' , '123', '456', '서울 송파구 오금로 95', '456호', '1', '19960920', default, default, default, default, default, default, '127.0.0.1');

commit;

select *
from jsp_member
order by idx asc;

select idx, userid, name, email, gender
from jsp_member
order by idx desc;

-- 1페이지당 보여줄 회원의 명수 (3 , 5 , 10)

select RNO, idx, userid, name, email, gender
from 
(
    select rownum AS RNO, idx, userid, name, email, gender
    from 
    (
        select idx, userid, name, email, gender
        from jsp_member
        where status = 1 
        order by idx desc
    ) V
) T
where T.RNO between 1 and 10;
/*
      1페이지(currentShowPageNo)
      한페이지당 10개행(sizePerPage)을 보여주고자 한다.
       1 => (currentShowPageNo * sizePerPage) - (sizePerPage-1)  // 공식
      10 => (currentShowPageNo * sizePerPage) // 공식
      
            (1 * 10) - (10-1) ==>  1
            (1 * 10)          ==> 10
*/
    

select RNO, idx, userid, name, email, gender
from 
(
    select rownum AS RNO, idx, userid, name, email, gender
    from 
    (
        select idx, userid, name, email, gender
        from jsp_member
        where status = 1 
        order by idx desc
    ) V
) T
where T.RNO between 11 and 20;
/*
      2페이지(currentShowPageNo)
      한페이지당 10개행(sizePerPage)을 보여주고자 한다.
      11 => (currentShowPageNo * sizePerPage) - (sizePerPage-1)  // 공식
      20 => (currentShowPageNo * sizePerPage) // 공식
      
            (2 * 10) - (10-1) ==> 11
            (2 * 10)          ==> 20
*/


select RNO, idx, userid, name, email, gender
from 
(
    select rownum AS RNO, idx, userid, name, email, gender
    from 
    (
        select idx, userid, name, email, gender
        from jsp_member
        where status = 1 
        order by idx desc
    ) V
) T
where T.RNO between '21' and '30';
/*
      3페이지(currentShowPageNo)
      한페이지당 10개행(sizePerPage)을 보여주고자 한다.
      21 => (currentShowPageNo * sizePerPage) - (sizePerPage-1)  // 공식
      30 => (currentShowPageNo * sizePerPage) // 공식
      
            (3 * 10) - (10-1) ==> 21
            (3 * 10)          ==> 30
*/

-- 한페이지당 3개행(sizePerPage)을 보여주고자 한다.
-- 이럴경우 7페이지는 RNO가 몇번부터 몇번까지 입니까? 
-- 1~3(1페이지) 4~6(2페이지) 7~9(3페이지) 10~12(4페이지) 13~15(5페이지) 16~18(6페이지) 19~21(7페이지)
/*
      7페이지(currentShowPageNo)
      한페이지당 3개행(sizePerPage)을 보여주고자 한다.
      19 => (currentShowPageNo * sizePerPage) - (sizePerPage-1)  // 공식
      21 => (currentShowPageNo * sizePerPage) // 공식
      
            (7 * 3) - (3-1) ==> 19
            (7 * 3)         ==> 21
*/

select count(*)
from jsp_member
where status = 1;  -- 207

select 207/5, 207/'5' from dual;
-- 41.4

select ceil(207/5), ceil(207/'5') from dual;
-- 42 

select ceil(count(*)/5) AS totalPage
from jsp_member
where status = 1;
-- 42


 ------- ***** AJAX Study ***** -------
 select imgno, imgfilename
 from bootstrap_image
 order by imgno;
 
 select *
 from jsp_member;


create table test_ajaxnews
(seqtitleno   number not null
,title        varchar2(200) not null
,registerday  date default sysdate not null
,constraint PK_test_ajaxnews_seqtitleno primary key(seqtitleno)
);

create sequence seq_test_ajaxnews_seqtitleno
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into test_ajaxnews(seqtitleno, title) values(seq_test_ajaxnews_seqtitleno.nextval, '''남달라'' 박성현 LPGA 투어 텍사스 클래식 우승, 시즌 첫 승' );
insert into test_ajaxnews(seqtitleno, title) values(seq_test_ajaxnews_seqtitleno.nextval, '뼈아픈 연패-전패, 아직 한번도 못 이겼다고?' );
insert into test_ajaxnews(seqtitleno, title) values(seq_test_ajaxnews_seqtitleno.nextval, '전설들과 어깨 나란히 한 김해림 "4연패도 노려봐야죠"');
insert into test_ajaxnews(seqtitleno, title) values(seq_test_ajaxnews_seqtitleno.nextval, '삼성·현대차 들쑤신 엘리엇, 이번엔 伊 최대통신사 삼켰다');
insert into test_ajaxnews(seqtitleno, title) values(seq_test_ajaxnews_seqtitleno.nextval, '"야구장, 어떤 음악으로 채우나" 응원단장들도 괴롭다');
insert into test_ajaxnews(seqtitleno, title) values(seq_test_ajaxnews_seqtitleno.nextval, '"공부 후 10분의 휴식, 기억력 높인다"');
insert into test_ajaxnews(seqtitleno, title) values(seq_test_ajaxnews_seqtitleno.nextval, '현대차, 쏘나타 ''익스트림 셀렉션'' 트림 출시… 사양과 가격은?');
insert into test_ajaxnews(seqtitleno, title) values(seq_test_ajaxnews_seqtitleno.nextval, '날씨무더위 계속…곳곳 강한 소나기');

commit;

select *
from test_ajaxnews;

select seqtitleno 
     , case when length(title) > 22 then substr(title, 1, 20)||'..'
       else title end AS title
     , to_char(registerday, 'yyyy-mm-dd hh24:mi:ss') AS registerday
from test_ajaxnews
order by seqtitleno desc;


 select *
 from jsp_member
 where name = '강감찬1';

 select *
 from jsp_member
 where name like '%강감%';
 
 select *
 from jsp_member
 where name like '%'|| '강감' ||'%';

--------------------------------------------------------------
create table checkEmail
(email   varchar2(50));

insert into checkEmail(email) values('leess@naver.com');

commit;

select *
from checkEmail;
 
--------------------------------------------------------------
create table checkID
(id   varchar2(50));

insert into checkID(id) values('leess');

commit;

select *
from checkID;

select *
from checkID
where id = 'kangkc';


select *
from checkID
where id = 'leess';

insert into checkID(id) values('Leesoonsin009');
commit;

select *
from checkID;

select *
from jsp_member
where name like '%'||'서영학'||'%';

select *
from jsp_member
where name like '%'||'강감찬'||'%';

select *
from jsp_member
where userid like '%'||'seoyh'||'%';

select *
from jsp_member
where userid like '%'||'kangkc'||'%';


select RNO, idx, userid, name, email, gender
from 
(
    select rownum AS RNO, idx, userid, name, email, gender
    from 
    (
        select idx, userid, name, email, gender
        from jsp_member
        where status = 1 
        and name like '%'|| '강감찬' ||'%' 
        order by idx desc
    ) V
) T
where T.RNO between 1 and 10;


select RNO, idx, userid, name, email, gender
from 
(
    select rownum AS RNO, idx, userid, name, email, gender
    from 
    (
        select idx, userid, name, email, gender
        from jsp_member
        where status = 1 
        and name like '%'|| '강감찬' ||'%' 
        order by idx desc
    ) V
) T
where T.RNO between 11 and 20;


select RNO, idx, userid, name, email, gender
from 
(
    select rownum AS RNO, idx, userid, name, email, gender
    from 
    (
        select idx, userid, name, email, gender
        from jsp_member
        where status = 1 
        and name like '%'|| '강감찬' ||'%' 
        order by idx desc
    ) V
) T
where T.RNO between 21 and 30;


select *
from jsp_member
where idx = 103;

/*
  회원번호 :
  아이디 : 
  회원명 :
  이메일 : 
  휴대폰 : 
  우편번호 :
  주소 : 
  성별 : 
  생년월일 :
  나이 : 
  코인액 : 
  포인트 :
  가입일자 :
*/

 -------------------------------------------------------------------------------
                  ----- *** 쇼핑몰 *** ----- 
/*
   카테고리 테이블명 : jsp_category

   컬럼정의 
     -- 카테고리 대분류 번호  : 시퀀스(seq_jsp_category_cnum)로 증가함.(Primary Key)
     -- 카테고리 코드(unique) : ex) 전자제품  '100000'
                                  의류      '200000'
                                  도서      '300000' 
     -- 카테고리명(not null)  : 전자제품, 의류, 도서           
  
*/ 
 
create table jsp_category
(cnum    number(8)     not null  -- 카테고리 대분류 번호
,code    varchar2(20)  not null  -- 카테고리 코드
,cname   varchar2(100) not null  -- 카테고리명
,constraint PK_jsp_category_cnum primary key(cnum)
,constraint UQ_jsp_category_code unique(code)
);

create sequence seq_jsp_category_cnum
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into jsp_category values(seq_jsp_category_cnum.nextval, '100000', '전자제품');
insert into jsp_category values(seq_jsp_category_cnum.nextval, '200000', '의류');
insert into jsp_category values(seq_jsp_category_cnum.nextval, '300000', '도서');
commit;

-- 나중에 넣습니다.
--insert into jsp_category values(seq_jsp_category_cnum.nextval, '400000', '식품');
--commit;

select cnum, code, cname
from jsp_category
order by cnum asc;



create table jsp_spec
(snum    number(8)     not null  -- 스펙번호       
,sname   varchar2(100) not null  -- 스펙명         
,constraint PK_jsp_spec_snum primary key(snum)
,constraint UQ_jsp_spec_sname unique(sname)
);

create sequence seq_jsp_spec
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into jsp_spec(snum, sname) values(seq_jsp_spec.nextval, 'HIT');
insert into jsp_spec(snum, sname) values(seq_jsp_spec.nextval, 'NEW');
insert into jsp_spec(snum, sname) values(seq_jsp_spec.nextval, 'BEST');

commit;

select snum, sname
from jsp_spec
order by snum asc;


---- *** 제품 테이블 : jsp_product *** ----
create table jsp_product
(pnum           number(8) not null       -- 제품번호(Primary Key)
,pname          varchar2(100) not null   -- 제품명
,pcategory_fk   varchar2(20)             -- 카테고리코드(Foreign Key)
,pcompany       varchar2(50)             -- 제조회사명
,pimage1        varchar2(100) default 'noimage.png' -- 제품이미지1   이미지파일명
,pimage2        varchar2(100) default 'noimage.png' -- 제품이미지2   이미지파일명 
,pqty           number(8) default 0      -- 제품 재고량
,price          number(8) default 0      -- 제품 정가
,saleprice      number(8) default 0      -- 제품 판매가(할인해서 팔 것이므로)
,pspec          varchar2(20)             -- 'HIT', 'BEST', 'NEW' 등의 값을 가짐.
,pcontent       clob                     -- 제품설명  varchar2는 varchar2(4000) 최대값이므로
                                         --          4000 byte 를 초과하는 경우 clob 를 사용한다.
                                         --          clob 는 최대 4GB 까지 지원한다.
                                         
,point          number(8) default 0      -- 포인트 점수                                         
,pinputdate     date default sysdate     -- 제품입고일자
,constraint  PK_jsp_product_pnum primary key(pnum)
,constraint  FK_jsp_product_pcategory_fk foreign key(pcategory_fk)
                                         references jsp_category(code)
);

create sequence seq_jsp_product_pnum
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '스마트TV', '100000', '삼성',
       'tv_samsung_h450_1.png','tv_samsung_h450_2.png',
       100,1200000,800000,'HIT','42인치 스마트 TV. 기능 짱!!', 50);


insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북', '100000', '엘지',
       'notebook_lg_gt50k_1.png','notebook_lg_gt50k_2.png',
       150,900000,750000,'HIT','노트북. 기능 짱!!', 30);  
       

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '바지', '200000', 'S사',
       'cloth_canmart_1.png','cloth_canmart_2.png',
       20,12000,10000,'HIT','예뻐요!!', 5);       
       

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '남방', '200000', '버카루',
       'cloth_buckaroo_1.png','cloth_buckaroo_2.png',
       50,15000,13000,'HIT','멋져요!!', 10);       
       

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '세계탐험보물찾기시리즈', '300000', '아이세움',
       'book_bomul_1.png','book_bomul_2.png',
       100,35000,33000,'HIT','만화로 보는 세계여행', 20);       
       
       
insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '만화한국사', '300000', '녹색지팡이',
       'book_koreahistory_1.png','book_koreahistory_2.png',
       80,130000,120000,'HIT','만화로 보는 이야기 한국사 전집', 60);
       
commit;     

-----------------------------------------------------------------------
insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북1', '100000', 'DELL',
       '1.jpg','2.jpg',
       100,1200000,1000000,'HIT','1번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북2', '100000', '에이서',
       '3.jpg','4.jpg',
       100,1200000,1000000,'HIT','2번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북3', '100000', 'LG전자',
       '5.jpg','6.jpg',
       100,1200000,1000000,'HIT','3번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북4', '100000', '레노버',
       '7.jpg','8.jpg',
       100,1200000,1000000,'HIT','4번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북5', '100000', '삼성전자',
       '9.jpg','10.jpg',
       100,1200000,1000000,'HIT','5번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북6', '100000', 'HP',
       '11.jpg','12.jpg',
       100,1200000,1000000,'HIT','6번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북7', '100000', '레노버',
       '13.jpg','14.jpg',
       100,1200000,1000000,'HIT','7번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북8', '100000', 'LG전자',
       '15.jpg','16.jpg',
       100,1200000,1000000,'HIT','8번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북9', '100000', '한성컴퓨터',
       '17.jpg','18.jpg',
       100,1200000,1000000,'HIT','9번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북10', '100000', 'MSI',
       '19.jpg','20.jpg',
       100,1200000,1000000,'HIT','10번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북11', '100000', 'LG전자',
       '21.jpg','22.jpg',
       100,1200000,1000000,'HIT','11번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북12', '100000', 'HP',
       '23.jpg','24.jpg',
       100,1200000,1000000,'HIT','12번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북13', '100000', '레노버',
       '25.jpg','26.jpg',
       100,1200000,1000000,'HIT','13번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북14', '100000', '레노버',
       '27.jpg','28.jpg',
       100,1200000,1000000,'HIT','14번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북15', '100000', '한성컴퓨터',
       '29.jpg','30.jpg',
       100,1200000,1000000,'HIT','15번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북16', '100000', '한성컴퓨터',
       '31.jpg','32.jpg',
       100,1200000,1000000,'HIT','16번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북17', '100000', '레노버',
       '33.jpg','34.jpg',
       100,1200000,1000000,'HIT','17번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북18', '100000', '레노버',
       '35.jpg','36.jpg',
       100,1200000,1000000,'HIT','18번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북19', '100000', 'LG전자',
       '37.jpg','38.jpg',
       100,1200000,1000000,'HIT','19번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북20', '100000', 'LG전자',
       '39.jpg','40.jpg',
       100,1200000,1000000,'HIT','20번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북21', '100000', '한성컴퓨터',
       '41.jpg','42.jpg',
       100,1200000,1000000,'HIT','21번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북22', '100000', '에이서',
       '43.jpg','44.jpg',
       100,1200000,1000000,'HIT','22번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북23', '100000', 'DELL',
       '45.jpg','46.jpg',
       100,1200000,1000000,'HIT','23번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북24', '100000', '한성컴퓨터',
       '47.jpg','48.jpg',
       100,1200000,1000000,'HIT','24번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북25', '100000', '삼성전자',
       '49.jpg','50.jpg',
       100,1200000,1000000,'HIT','25번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북26', '100000', 'MSI',
       '51.jpg','52.jpg',
       100,1200000,1000000,'HIT','26번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북27', '100000', '애플',
       '53.jpg','54.jpg',
       100,1200000,1000000,'HIT','27번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북28', '100000', '아수스',
       '55.jpg','56.jpg',
       100,1200000,1000000,'HIT','28번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북29', '100000', '레노버',
       '57.jpg','58.jpg',
       100,1200000,1000000,'HIT','29번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북30', '100000', '삼성전자',
       '59.jpg','60.jpg',
       100,1200000,1000000,'HIT','30번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북31', '100000', 'MSI',
       '61.jpg','62.jpg',
       100,1200000,1000000,'NEW','31번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북32', '100000', '삼성전자',
       '63.jpg','64.jpg',
       100,1200000,1000000,'NEW','32번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북33', '100000', '한성컴퓨터',
       '65.jpg','66.jpg',
       100,1200000,1000000,'NEW','33번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북34', '100000', 'HP',
       '67.jpg','68.jpg',
       100,1200000,1000000,'NEW','34번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북35', '100000', 'LG전자',
       '69.jpg','70.jpg',
       100,1200000,1000000,'NEW','35번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북36', '100000', '한성컴퓨터',
       '71.jpg','72.jpg',
       100,1200000,1000000,'NEW','36번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북37', '100000', '삼성전자',
       '73.jpg','74.jpg',
       100,1200000,1000000,'NEW','37번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북38', '100000', '레노버',
       '75.jpg','76.jpg',
       100,1200000,1000000,'NEW','38번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북39', '100000', 'MSI',
       '77.jpg','78.jpg',
       100,1200000,1000000,'NEW','39번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북40', '100000', '레노버',
       '79.jpg','80.jpg',
       100,1200000,1000000,'NEW','40번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북41', '100000', '레노버',
       '81.jpg','82.jpg',
       100,1200000,1000000,'NEW','41번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북42', '100000', '레노버',
       '83.jpg','84.jpg',
       100,1200000,1000000,'NEW','42번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북43', '100000', 'MSI',
       '85.jpg','86.jpg',
       100,1200000,1000000,'NEW','43번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북44', '100000', '한성컴퓨터',
       '87.jpg','88.jpg',
       100,1200000,1000000,'NEW','44번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북45', '100000', '애플',
       '89.jpg','90.jpg',
       100,1200000,1000000,'NEW','45번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북46', '100000', '아수스',
       '91.jpg','92.jpg',
       100,1200000,1000000,'NEW','46번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북47', '100000', '삼성전자',
       '93.jpg','94.jpg',
       100,1200000,1000000,'NEW','47번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북48', '100000', 'LG전자',
       '95.jpg','96.jpg',
       100,1200000,1000000,'NEW','48번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북49', '100000', '한성컴퓨터',
       '97.jpg','98.jpg',
       100,1200000,1000000,'NEW','49번 노트북', 60);

insert into jsp_product(pnum, pname, pcategory_fk, pcompany, 
                        pimage1, pimage2, pqty, price, saleprice,
                        pspec, pcontent, point)
values(seq_jsp_product_pnum.nextval, '노트북50', '30000', '레노버',
       '99.jpg','100.jpg',
       100,1200000,1000000,'NEW','50번 노트북', 60);

commit;
------------------------------------------------------------------------


select pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point
     , to_char(pinputdate, 'yyyy-mm-dd') as pinputdate
from jsp_product
where pspec = 'HIT'
order by pnum asc;                   


select pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point
     , to_char(pinputdate, 'yyyy-mm-dd') as pinputdate
from jsp_product
where pspec = 'NEW'
order by pnum desc;

select rno, pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point, pinputdate
from 
(
 select  row_number() over(order by pnum asc) AS RNO
       , pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point
       , to_char(pinputdate, 'yyyy-mm-dd') AS pinputdate  
 from jsp_product
 where pspec = 'NEW' 
) V 
where RNO between 1 and 8;
 
 
select rno, pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point, pinputdate
from 
(
 select  row_number() over(order by pnum asc) AS RNO
       , pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point
       , to_char(pinputdate, 'yyyy-mm-dd') AS pinputdate  
 from jsp_product
 where pspec = 'NEW' 
) V 
where RNO between 9 and 16;


select rno, pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point, pinputdate
from 
(
 select  row_number() over(order by pnum asc) AS RNO
       , pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point
       , to_char(pinputdate, 'yyyy-mm-dd') AS pinputdate  
 from jsp_product
 where pspec = 'HIT' 
) V 
where RNO between '33' and '41';


select count(*) AS CNT
from jsp_product
where pcategory_fk = '100000';

select count(*) AS CNT
from jsp_product
where pcategory_fk = '200000';

select count(*) AS CNT
from jsp_product
where pcategory_fk = '300000';


----- >>> 하나의 제품속에 여러개의 이미지 파일 넣어주기 <<< ------ 
select *
from jsp_product
order by pnum;  

create table jsp_product_imagefile
(imgfileno     number         not null   -- 시퀀스로 입력받음.
,fk_pnum       number(8)      not null   -- 제품번호(foreign key)
,imgfilename   varchar2(100)  not null   -- 제품이미지파일명
,constraint PK_jsp_product_imagefile primary key(imgfileno)
,constraint FK_jsp_product_imagefile foreign key(fk_pnum) 
                                        references jsp_product(pnum)
);


create sequence seq_imgfileno
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

select imgfileno, fk_pnum, imgfilename
from jsp_product_imagefile
order by imgfileno desc;


select A.cname, pnum, pname, pcategory_fk, pcompany, pimage1, pimage2, pqty, price, saleprice, pspec, pcontent, point 
	 , to_char(pinputdate, 'yyyy-mm-dd') as pinputdate
from jsp_category A left join jsp_product B 
on A.code = B.pcategory_fk 
where A.code = '400000'
order by pnum desc;

select *
from jsp_product
where pnum = 'asfsdfsfsdfsdfsdfsdf';

select *
from jsp_product
where pnum = '3';
 
select *
from jsp_product
where to_char(pnum) = 'asfsdfsfsdfsdfsdfsdf'; 

select *
from jsp_product
where to_char(pnum) = '3'; 
 
 
      -------- **** 특정제품에 대해서 좋아요 , 싫어요 처리하기 **** ---------
select * from jsp_member;
desc jsp_member;
desc jsp_product;

create table jsp_like
(userid   varchar2(20) not null
,pnum     number(8) not null
,constraint PK_jsp_like primary key(userid, pnum)
,constraint FK_jsp_like_userid foreign key(userid) references jsp_member(userid)
,constraint FK_jsp_like_pnum foreign key(pnum) references jsp_product(pnum)
);
--- 'leess','1001'
--- 'hongkd','1001'
--- 'leess','1001'  ==> insert 불가!!
--- 'leess','1002' ==> insert 하기전 jsp_dislike 테이블에 'leess','1002' 이라는 행이 존재하는지 알아봐서
--                     행이 존재하다라면 먼저 jsp_dislike 테이블에 'leess','1002' 이라는 행을 삭제(delete)하고서
--                     insert 를 해주어야 한다.

create table jsp_dislike
(userid   varchar2(20) not null
,pnum     number(8) not null
,constraint PK_jsp_dislike primary key(userid, pnum)
,constraint FK_jsp_dislike_userid foreign key(userid) references jsp_member(userid)
,constraint FK_jsp_dislike_pnum foreign key(pnum) references jsp_product(pnum)
);
--- 'leess','1002' ==> insert 하기전 jsp_like 테이블에 'leess','1002' 이라는 행이 존재하는지 알아봐서
--                     행이 존재하다라면 먼저 jsp_like 테이블에 'leess','1002' 이라는 행을 삭제(delete)하고서
--                     insert 를 해주어야 한다.

select * 
from jsp_like;

select * 
from jsp_dislike;


select (select count(*) 
        from jsp_like
        where pnum = 58) as likecnt
    ,  (select count(*) 
        from jsp_dislike
        where pnum = 58) as dislikecnt   
from dual;

select *
from jsp_product; 
 

-------- **** 제품후기 테이블 생성하기 **** ----------
create table jsp_product_comments
(no                  number 
,fk_userid           varchar2(20)   not null   --  사용자ID       
,fk_pnum             number(8)      not null   -- 제품번호(foreign key)
,commentContents     varchar2(4000) not null
,writeDate           date default sysdate
,constraint PK_jsp_product_comments primary key(no)
,constraint FK_jsp_product_comments_userid foreign key(fk_userid) 
                                           references jsp_member(userid)
,constraint FK_jsp_product_comments_pnum foreign key(fk_pnum) 
                                         references jsp_product(pnum)
);

create sequence seq_product_comments
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

select *
from jsp_product_comments
order by no desc;

select no, name, fk_pnum, commentContents, to_char(writeDate, 'yyyy-mm-dd hh24:mi:ss') AS writeDate
from jsp_product_comments A join jsp_member B
on A.fk_userid = B.userid
where fk_pnum = 3
order by no desc; 
 

-------- **** 장바구니 테이블 생성하기 **** ----------

 desc jsp_member;
 desc jsp_product;

 create table jsp_cart
 (cartno     number               not null   --  장바구니 번호             
 ,fk_userid  varchar2(20)         not null   --  사용자ID            
 ,fk_pnum    number(8)            not null   --  제품번호                
 ,oqty       number(8) default 0  not null   --  주문량                   
 ,status     number(1) default 1             --  삭제유무
 ,constraint PK_jsp_cart_cartno primary key(cartno)
 ,constraint FK_jsp_cart_fk_userid foreign key(fk_userid)
                                   references jsp_member(userid) 
 ,constraint FK_jsp_cart_fk_pnum foreign key(fk_pnum)
                                   references jsp_product(pnum)
 ,constraint CK_jsp_cart_status check( status in(0,1) ) 
 );

 create sequence seq_jsp_cart_cartno
 start with 1
 increment by 1
 nomaxvalue
 nominvalue
 nocycle
 nocache;

 comment on table jsp_cart
 is '장바구니 테이블';

 comment on column jsp_cart.cartno
 is '장바구니번호(시퀀스명 : seq_jsp_cart_cartno)';

 comment on column jsp_cart.fk_userid
 is '회원ID  jsp_member 테이블의 userid 컬럼을 참조한다.';

 comment on column jsp_cart.fk_pnum
 is '제품번호 jsp_product 테이블의 pnum 컬럼을 참조한다.';

 comment on column jsp_cart.oqty
 is '장바구니에 담을 제품의 주문량';

 comment on column jsp_cart.status
 is '장바구니에 담겨져 있으면 1, 장바구니에서 비우면 0';

 select *
 from user_tab_comments;

 select column_name, comments
 from user_col_comments
 where table_name = 'JSP_CART';
 
 select cartno, fk_userid, fk_pnum, oqty, status
 from jsp_cart
 order by cartno asc;
 
 desc jsp_product;
 
 select A.cartno, A.fk_userid, A.fk_pnum, B.pname, B.pcategory_fk,
        B.pimage1, B.price, B.saleprice, B.point, A.oqty, A.status
 from jsp_cart A join jsp_product B
 on A.fk_pnum = B.pnum
 where A.status = 1 and A.fk_userid = 'leess'
 order by A.cartno desc;
 
 
 select A.cartno, A.fk_userid, A.fk_pnum, B.pname, B.pcategory_fk,
        B.pimage1, B.price, B.saleprice, B.point, A.oqty, A.status
 from jsp_cart A join jsp_product B
 on A.fk_pnum = B.pnum
 where A.status = 1 and A.fk_userid = 'seoyh'
 order by A.cartno desc;
 
 
 select cartno, fk_userid, fk_pnum, pname, pcategory_fk,
        pimage1, price, saleprice, point, oqty, status
 from 
 (
     select row_number() over (order by cartno desc) AS RNO,
            A.cartno, A.fk_userid, A.fk_pnum, B.pname, B.pcategory_fk,
            B.pimage1, B.price, B.saleprice, B.point, A.oqty, A.status
     from jsp_cart A join jsp_product B
     on A.fk_pnum = B.pnum
     where A.status = 1 and A.fk_userid = 'seoyh' 
 ) V 
 where RNO between 1 and 3;
 
 
 select cartno, fk_userid, fk_pnum, pname, pcategory_fk,
        pimage1, price, saleprice, point, oqty, status
 from 
 (
     select row_number() over (order by cartno desc) AS RNO,
            A.cartno, A.fk_userid, A.fk_pnum, B.pname, B.pcategory_fk,
            B.pimage1, B.price, B.saleprice, B.point, A.oqty, A.status
     from jsp_cart A join jsp_product B
     on A.fk_pnum = B.pnum
     where A.status = 1 and A.fk_userid = 'seoyh' 
 ) V 
 where RNO between 4 and 6;
 
 
 select cartno, fk_userid, fk_pnum, pname, pcategory_fk,
        pimage1, price, saleprice, point, oqty, status
 from 
 (
     select row_number() over (order by cartno desc) AS RNO,
            A.cartno, A.fk_userid, A.fk_pnum, B.pname, B.pcategory_fk,
            B.pimage1, B.price, B.saleprice, B.point, A.oqty, A.status
     from jsp_cart A join jsp_product B
     on A.fk_pnum = B.pnum
     where A.status = 1 and A.fk_userid = 'seoyh' 
 ) V 
 where RNO between 7 and 9;


select row_number() over(order by pnum desc) AS RNO
    , C.cname, pnum, pname, pimage1, price, saleprice, point
from jsp_category C LEFT JOIN jsp_product P 
on C.code = P.pcategory_fk
where C.code = 400000; 


select nvl(sum(oqty * saleprice), 0) AS SUMTOTALPRICE
     , nvl(sum(oqty * point), 0) AS SUMTOTALPOINT
from jsp_cart A join jsp_product B
on A.fk_pnum = B.pnum
where status = 1 and fk_userid = 'seoyh';


select nvl(sum(oqty * saleprice), 0) AS SUMTOTALPRICE
     , nvl(sum(oqty * point), 0) AS SUMTOTALPOINT
from jsp_cart A join jsp_product B
on A.fk_pnum = B.pnum
where status = 1 and fk_userid = 'hongkd';

update jsp_cart set status = 1;
commit;

select cartno, fk_userid, fk_pnum, oqty, status
from jsp_cart
order by cartno asc;

delete from jsp_cart 
where status = 0;

commit;
 
------------------ >>> 주문관련 테이블 <<< -----------------------------
-- [1] 주문 개요 테이블 : jsp_order
-- [2] 주문 상세 테이블 : jsp_order_detail


-- *** "주문 개요" 테이블 *** --
create table jsp_order
(odrcode        varchar2(20) not null          -- 주문코드(명세서번호)  주문코드 형식 : s+날짜+sequence ==> s20191213-1 , s20191213-2 , s20191213-3
                                               --                                                      s20191214-4 , s20191214-5 , s20191214-6
,fk_userid      varchar2(20) not null          -- 사용자ID
,odrtotalPrice  number       not null          -- 주문총액
,odrtotalPoint  number       not null          -- 주문총포인트
,odrdate        date default sysdate not null  -- 주문일자
,constraint PK_jsp_order_odrcode primary key(odrcode)
,constraint FK_jsp_order_fk_userid foreign key(fk_userid)
                                    references jsp_member(userid)
);


-- "주문코드(명세서번호) 시퀀스" 생성
create sequence seq_jsp_order
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

select 's'||to_char(sysdate,'yyyymmdd')||'-'||seq_jsp_order.nextval AS odrcode
from dual;

select odrcode, fk_userid, 
       odrtotalPrice, odrtotalPoint,
       to_char(odrdate, 'yyyy-mm-dd hh24:mi:ss') as odrdate
from jsp_order
order by odrcode desc;


-- *** "주문 상세" 테이블 *** --
create table jsp_order_detail
(odrseqnum      number               not null   -- 주문상세 일련번호
,fk_odrcode     varchar2(20)         not null   -- 주문코드(명세서번호)
,fk_pnum        number(8)            not null   -- 제품번호
,oqty           number               not null   -- 주문량
,odrprice       number               not null   -- "주문할 그때 그당시의 실제 판매가격" ==> insert 시 jsp_product 테이블에서 해당제품의 saleprice 컬럼값을 읽어다가 넣어주어야 한다.
,deliverStatus  number(1) default 1  not null   -- 배송상태( 1 : 주문만 받음,  2 : 배송중,  3 : 배송완료)
,deliverDate    date                            -- 배송완료일자  default 는 null 로 함.
,constraint PK_jsp_order_detail_odrseqnum  primary key(odrseqnum)
,constraint FK_jsp_order_detail_fk_odrcode foreign key(fk_odrcode)
                                            references jsp_order(odrcode) on delete cascade
,constraint FK_jsp_order_detail_fk_pnum foreign key(fk_pnum)
                                         references jsp_product(pnum)
,constraint CK_jsp_order_detail check( deliverStatus in(1, 2, 3) )
);


-- "주문상세 일련번호 시퀀스" 생성
create sequence seq_jsp_order_detail
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


select odrseqnum, fk_odrcode, fk_pnum, oqty, 
       odrprice, deliverStatus, 
       to_char(deliverDate, 'yyyy-mm-dd hh24:mi:ss') as deliverDate 
from jsp_order_detail
order by odrseqnum desc;


select *
from jsp_product
where pnum in('7','6');

select A.odrcode, A.fk_userid
     , to_char(A.odrdate, 'yyyy-mm-dd hh24:mi:ss') AS odrdate
     , B.odrseqnum, B.fk_pnum, B.oqty, B.odrprice
     , case B.deliverstatus 
       when 1 then '주문완료'
       when 2 then '배송중'
       when 3 then '배송완료'
       end AS deliverstatus
     , C.pname, C.pimage1, C.price, C.saleprice, C.point  
from jsp_order A join jsp_order_detail B
on A.odrcode = B.fk_odrcode
join jsp_product C
on B.fk_pnum = C.pnum
where 1=1 
and A.fk_userid = 'seoyh';


select *
from jsp_member
where userid = (select fk_userid
                from jsp_order
                where odrcode = 's20191213-5');

update jsp_order_detail set deliverstatus = 1;
commit; 

delete from jsp_order_detail;
delete from jsp_order;
delete from jsp_cart;
commit;

select * from jsp_cart;

update jsp_member set coin=300000, point=3000
where userid = 'seoyh';

commit;

select *
from jsp_order;

select *
from jsp_order_detail;

select *
from jsp_order A join jsp_order_detail B
on A.odrcode = B.fk_odrcode
where A.fk_userid = 'seoyh';

select count(*) AS CNT
from jsp_order A join jsp_order_detail B
on A.odrcode = B.fk_odrcode
where A.fk_userid = 'seoyh';


select A.odrcode, A.fk_userid
     , to_char(A.odrdate, 'yyyy-mm-dd hh24:mi:ss') AS odrdate
     , B.odrseqnum, B.fk_pnum, B.oqty, B.odrprice
     , case B.deliverstatus 
       when 1 then '주문완료'
       when 2 then '배송중'
       when 3 then '배송완료'
       end AS deliverstatus
     , C.pname, C.pimage1, C.price, C.saleprice, C.point  
from jsp_order A join jsp_order_detail B
on A.odrcode = B.fk_odrcode
join jsp_product C
on B.fk_pnum = C.pnum
where 1=1 
and A.fk_userid = 'seoyh'
order by odrcode desc, odrseqnum desc;


select odrcode, fk_userid, odrdate, odrseqnum, fk_pnum, oqty, odrprice, deliverstatus
     , pname, pimage1, price, saleprice, point
from 
 ( select row_number() over (order by B.fk_odrcode desc, B.odrseqnum desc) AS RNO 
        , A.odrcode, A.fk_userid
        , to_char(A.odrdate, 'yyyy-mm-dd hh24:mi:ss') AS odrdate
        , B.odrseqnum, B.fk_pnum, B.oqty, B.odrprice
        , case B.deliverstatus 
          when 1 then '주문완료'
          when 2 then '배송중'
          when 3 then '배송완료'
          end AS deliverstatus
       , C.pname, C.pimage1, C.price, C.saleprice, C.point  
  from jsp_order A join jsp_order_detail B
  on A.odrcode = B.fk_odrcode
  join jsp_product C
  on B.fk_pnum = C.pnum
  where 1=1 
  and A.fk_userid = 'seoyh'
 ) V 
where RNO between 1 and 10;


select odrcode, fk_userid, odrdate, odrseqnum, fk_pnum, oqty, odrprice, deliverstatus
     , pname, pimage1, price, saleprice, point
from 
 ( select row_number() over (order by B.fk_odrcode desc, B.odrseqnum desc) AS RNO 
        , A.odrcode, A.fk_userid
        , to_char(A.odrdate, 'yyyy-mm-dd hh24:mi:ss') AS odrdate
        , B.odrseqnum, B.fk_pnum, B.oqty, B.odrprice
        , case B.deliverstatus 
          when 1 then '주문완료'
          when 2 then '배송중'
          when 3 then '배송완료'
          end AS deliverstatus
       , C.pname, C.pimage1, C.price, C.saleprice, C.point  
  from jsp_order A join jsp_order_detail B
  on A.odrcode = B.fk_odrcode
  join jsp_product C
  on B.fk_pnum = C.pnum
  where 1=1 
  and A.fk_userid = 'seoyh'
 ) V 
where RNO between 11 and 20;
 

select *
from jsp_member
where userid = (select fk_userid
                from jsp_order
                where odrcode = 's20191214-21');

update jsp_order_detail set deliverstatus = 1;
commit;

-------------------------------------------------------------------------- 
 
select *
from jsp_member
where userid = 'younghak0959';

delete from jsp_member
where userid = 'younghak0959';

commit;


update jsp_member set coin=300000, point=3000
where userid in('kimkh','kimmh');

commit;

update jsp_member set coin=300000, point=3000
where userid = 'seosh';

----------------------------------------------------------
create table ncstest_comments
(no                  number 
,commentContents     varchar2(4000) not null
,writeDate           date default sysdate
,constraint PK_ncstest_comments primary key(no)
);

create sequence seq_ncstest_comments
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;












