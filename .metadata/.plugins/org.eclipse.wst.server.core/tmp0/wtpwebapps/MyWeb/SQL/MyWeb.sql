------ *** JSP & Sevlet MyWeb 에서 작업한 것 *** -------

show user;
-- USER이(가) "MYORAUSER"입니다.

drop table myweb_member purge;

create table myweb_member
(userid       varchar2(20)  not null
,passwd       varchar2(20)  not null
,name         Nvarchar2(20) not null
,email        varchar2(50)  not null
,tel          varchar2(20)  
,jubun        varchar2(13)  not null
,school       Nvarchar2(10) 
,interest     Nvarchar2(50)
,registerday  date default sysdate
,constraint PK_myweb_member primary key(userid)
);

select *
from myweb_member
order by registerday desc;

select userid, passwd, name, email, tel, 
       substr(jubun,1,6) AS jubun1, 
       substr(jubun,7)   AS jubun2, 
       school, 
       nvl(interest, '없음') AS interest, 
       to_char(registerday, 'yyyy-mm-dd hh24:mi:ss') AS registerday
from myweb_member
order by registerday desc;


select userid, passwd, name, email, tel, 
       substr(jubun,1,6) AS jubun1, 
       substr(jubun,7)   AS jubun2, 
       school, 
       nvl(interest, '없음') AS interest, 
       to_char(registerday, 'yyyy-mm-dd hh24:mi:ss') AS registerday
from myweb_member
where userid = 'asfsdfsdfsafsdfsjkkk';

select userid, name, email, 
       to_char(registerday, 'yyyy-mm-dd hh24:mi:ss') AS registerday
from myweb_member
order by registerday desc;


select *
from myweb_member
where userid = 'Eomjh';

select userid, passwd, name, email, tel, 
       substr(jubun,1,6)||'-'||substr(jubun,7) AS jubun,
       case when substr(jubun,7,1) in('1','3') then '남자' else '여자' end AS gender, 
       extract(year from sysdate) - ( to_number(substr(jubun,1,2)) + case when substr(jubun,7,1) in('1','2') then 1900 else 2000 end )+1 AS age, 
       school, nvl(interest, '없음') AS interest,
       to_char(registerday, 'yyyy-mm-dd hh24:mi:ss') AS registerday
from myweb_member
where userid = 'Hongkd';

             ----- << 방명록 작성하기 과제 >> ------
create table myweb_visit
(visitno       number
,visitorname   Nvarchar2(20)   not null
,contents      Nvarchar2(2000) not null
,writeday      date default sysdate 
,constraint PK_myweb_visit primary key(visitno)
);

create sequence seq_myweb_visit
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

select *
from myweb_visit;

update myweb_visit set contents = '<script type="text/javascript">alert("ㅎㅎㅎㅎ 몰라도 돼!!");</script>'
where visitno = 5;

commit;

select *
from myweb_visit
where contents like '%<script%';

select contents, '&'||replace(contents, '<', 'lt;')
from myweb_visit
where contents like '%<script%';


update myweb_visit set contents = '&'||replace(contents, '<', 'lt;')
where contents like '%<script%';

commit;

select *
from myweb_visit
order by visitno asc;





















