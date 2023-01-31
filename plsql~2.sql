SET SERVEROUTPUT ON

-- ** PL/SQL CONDITIONALS **
-- * IF ELSE STATEMENTS *

--DECLARE
--empage number(2);
--sal number(10,2);
--BEGIN
--select emp_salary,emp_age into sal,empage from employee
--where emp_id='E40002';
--dbms_output.put_line(sal || ' : ' || empage);
--
--if empage>25 then
--        sal:=sal+10;
--else
--        sal:=sal+3;
--end if;
--dbms_output.put_line(sal || ' : ' || empage);
--END;

--DECLARE
--empage number(2);
--sal number(10,2);
--BEGIN
--select emp_salary,emp_age into sal,empage from employee
--where emp_id='E40002';
--dbms_output.put_line(sal || ' : ' || empage);
--
--if empage>25 then
--        sal:=sal+10;
--elsif empage>30 then
--        sal:=sal+20;
--else
--        sal:=sal+3;
--end if;
--dbms_output.put_line(sal || ' : ' || empage);
--END;

--DECLARE
--num number(1):=&Weekday;
--dayname varchar(10);
--
--BEGIN
--dayname := Case num
--           when 1 then 'Monday'
--           when 2 then 'Tuesday'
--           when 3 then 'Wednesday'
--           else 'Sunday'
--end;
--
--dbms_output.put_line(dayname);
--END;


-- * LOOPS *

--DECLARE
--i number(2);
--BEGIN
--    i:=1;
--    loop
--        dbms_output.put_line(i);
--        i:=i+1;
--        exit when i>10;
--    end loop;
--END;

--DECLARE
--i number(2);
--BEGIN
--    i:=1;
--    while i<=10 loop
--        dbms_output.put_line('i=' || i);
--        i:=i+1;
--    end loop;
--END;

--BEGIN
--    for i in 1..10 loop
--        dbms_output.put_line(i);
--    end loop;
--END;