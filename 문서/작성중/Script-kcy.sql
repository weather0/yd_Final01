use kcy;

SELECT * FROM k_users;

show variables like "max_connections";
show variables like '%timeout';
show full processlist;

set global max_connections = 200;


use mysql;

select user, host from user;

show grants for admin;

show grants for rdsadmin@localhost;



select u.user_id, u.user_name, 
s.student_grade, s.student_sem, SUBSTR(u.user_ssn,1,6),
u.user_dept, u.user_sex, 
s.student_aca_yn, u.user_nation,
s.student_regdate, u.user_phone, 
s.student_graddate, u.user_email,
c.credit_total
from k_users u join k_students s on(u.user_id = s.stu_id) 
			   join k_credit c using(stu_id) 
where u.user_id = 01174314;

SELECT user_name, SUBSTR(user_ssn,8,1), user_sex  from k_users WHERE SUBSTR(user_ssn,8,1) = '2';

UPDATE k_users set user_sex = if(SUBSTR(user_ssn,8,1)=1,'M','F');

select u.user_name, u.user_id,
		u.user_dept, u.user_phone,
		sa.aca_type, sa.aca_start, sa.aca_end, sa.aca_reason, 
		sa.aca_yn, sa.aca_reject, sa.aca_date, sa.aca_file
from k_users u join k_student_aca sa on(u.user_id = sa.stu_id)
WHERE u.user_id = 11123456;


select sch_id, sch_start, sch_end, sch_title
from k_schedule 
where sch_type = 'SEMESTER' 
and sch_start > '2022-01-01' 
order by 1;

desc k_student_aca;


select now() from dual;



insert into k_student_aca 
  values (
         default, 
         '휴학',
         'S202602',
         'S203102',
         'on',
         'awsefawefwef',
         "신청중",
         null,
         '11123456',
         now(),
         "ggg"
         );


  
  -- 이걸 amazon rds 웹사이트에서 파라미터그룹에서 세팅해줘야 함. 
  -- (super 권한 있는 rdsadmin 계정으로 직접 접속은 제공하지 않는다고.)
  SET GLOBAL log_bin_trust_function_creators = 1;
  
  show grants for kcy;
  
  create or replace function fn_terms (
  	p_sch_id varchar(100)
  ) returns varchar(100)
  begin
  	declare v_sch_title varchar(100);
  
  SELECT sch_title
  into v_sch_title
  from k_schedule
  where sch_id = p_sch_id;
 
 return v_sch_title;

end

select fn_terms('S202501');


  select u.user_name, u.user_id,
         u.user_dept, u.user_phone,
         sa.aca_type, fn_terms(sa.aca_start), fn_terms(sa.aca_end), sa.aca_reason, 
         sa.aca_yn, sa.aca_reject, sa.aca_date, sa.aca_file
    from k_users u 
    join k_student_aca sa on (u.user_id = sa.stu_id)
   where u.user_id = '11123456'
   order by sa.aca_date desc;
  
