show user;
-- USER이(가) "SYS"입니다.

select *
from v$parameter
where name like '%job%';

alter system set job_queue_processes = 20;

select * from user_jobs;

-- ***** 임소미조 시작 ***** --
create user semi102 identified by eclass
default tablespace users;

grant connect, resource, unlimited tablespace, create view to semi102;

grant create any job to semi102;


-- ***** 양현재조 시작 ***** --
create user semidog identified by eclass
default tablespace users;

grant connect, resource, unlimited tablespace, create view to semidog;

grant create any job to semidog;


-- ***** 김경훈조 시작 ***** --
create user semiwatch identified by eclass
default tablespace users;

grant connect, resource, unlimited tablespace, create view to semiwatch;

grant create any job to semiwatch;


-- ***** 박수연조 시작 ***** --
create user sajo identified by eclass
default tablespace users;

grant connect, resource, unlimited tablespace, create view to sajo;

grant create any job to sajo;


-- ***** 김민태조 시작 ***** --
create user ojo identified by eclass
default tablespace users;

grant connect, resource, unlimited tablespace, create view to ojo;

grant create any job to ojo;


----------------------------------------------------
select *
from dba_tables
where owner in ('SEMI102','SEMIDOG','SEMIWATCH','SAJO')
order by owner asc;



