-- ** CURSOR **
-- * IMPLICIT CURSOR *
SET SERVEROUTPUT ON
--DECLARE
--cnt number(3);
--BEGIN
--update employee 
--set emp_salary = emp_salary+2 
--where emp_age between 25 and 30;
--cnt:=SQL%RowCount;
--dbms_output.put_line(cnt || 'rows updated');
--END;

--DECLARE  
--   total_rows number(2); 
--BEGIN 
--   UPDATE employee 
--   SET emp_salary = emp_salary + 500; 
--   IF sql%notfound THEN 
--      dbms_output.put_line('no customers selected'); 
--   ELSIF sql%found THEN 
--      total_rows := sql%rowcount;
--      dbms_output.put_line( total_rows || ' customers selected '); 
--   END IF;  
--END; 
 
-- * EXPLICIT CURSOR *

DECLARE
c_empno employee.emp_id%TYPE;
c_empname employee.emp_name%TYPE;
CURSOR emp_cursor IS
            SELECT emp_id,emp_name
            FROM employee;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor into c_empno,c_empname;
        EXIT WHEN emp_cursor%ROWCOUNT>5 OR emp_cursor%NOTFOUND;
        dbms_output.put_line(c_empno || ' : ' || c_empname);
    END LOOP;
    CLOSE emp_cursor; 
END;
