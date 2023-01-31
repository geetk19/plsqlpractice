use plsql;

CREATE TABLE employee(
emp_id VARCHAR(8),
emp_name VARCHAR(20),
emp_designation VARCHAR(20),
emp_age INT,
emp_salary INT);

INSERT INTO employee VALUES('E40001','PRADEEP','H.R',36,9000);
INSERT INTO employee VALUES('E40002','ASHOK','MANAGER',28,7000);
INSERT INTO employee VALUES('E40003','PAVAN KUMAR','ASST MANAGER',29,5000);
INSERT INTO employee VALUES('E40004','SANTHOSH','STORE MANAGER',25,2000);
INSERT INTO employee VALUES('E40005','THAMAN','GENERAL MANAGER',26,8000);

select * from employee;

drop table employee;



