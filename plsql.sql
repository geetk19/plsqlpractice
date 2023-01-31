SET SERVEROUTPUT ON
--BEGIN
--dbms_output.put_line('Welcome to the KT session on PL/SQL');
--END;

--DECLARE
--var1 varchar2(10);
--num1 number(3);
--
--BEGIN
--var1:='Geeta';
--num1:=100;
--dbms_output.put_line('Val1:' || var1);
--dbms_output.put_line('Num1:' || num1);
--END;

--DECLARE 
--name varchar(10);
--sal number(10,2);
--BEGIN
--select emp_name,emp_salary into name,sal from employee
--where emp_id='E40004';
--dbms_output.put_line('Name:'|| name);
--dbms_output.put_line('Salary:' || sal);
--END;

--DECLARE 
--name employee.emp_name%TYPE;
--sal employee.emp_salary%TYPE;
--BEGIN
--select emp_name,emp_salary into name,sal from employee
--where emp_id='E40004';
--dbms_output.put_line('Name:'|| name);
--dbms_output.put_line('Salary:' || sal);
--END;

--DECLARE 
--record employee%ROWTYPE;
--BEGIN
--select * into record from employee
--where emp_id='E40003';
--dbms_output.put_line(record.emp_name || ' | ' || record.emp_designation || ' | ' || record.emp_salary);
--END;


