-- ** EXCEPTION HANDLING **
SET SERVEROUTPUT ON

--DECLARE
--e_name employee.emp_name%TYPE;
--e_designation employee.emp_designation%TYPE;
--
--BEGIN
--SELECT emp_name,emp_designation 
--INTO e_name,e_designation
--FROM employee
--WHERE emp_id='E40004';
--dbms_output.put_line(e_name || ' is designated as ' || e_designation);
--
--EXCEPTION
--    WHEN NO_DATA_FOUND THEN
--        dbms_output.put_line('No records');
--    WHEN TOO_MANY_ROWS THEN
--        dbms_output.put_line('More than 1 record found');
--    WHEN OTHERS THEN
--        dbms_output.put_line('Some error found');
--END;

DECLARE
e_name employee.emp_name%TYPE;
e_designation employee.emp_designation%TYPE;
e_invalid_empid EXCEPTION;

BEGIN
UPDATE employee
SET emp_salary=emp_salary+10
WHERE emp_id='E40009';

IF SQL%NOTFOUND THEN
    RAISE e_invalid_empid;
END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No records');
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('More than 1 record found');
    WHEN e_invalid_empid THEN
        dbms_output.put_line('No such empid found');
    WHEN OTHERS THEN
        dbms_output.put_line('Some error found');
END;
