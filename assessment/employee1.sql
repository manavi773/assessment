/* 2026-08-16 18:11:20 [158 ms] */ 
CREATE TABLE emplo_details(
    employee_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    phone_no VARCHAR(20) NOT NULL,
    department VARCHAR(20) NOT NULL,
    salary FLOAT NOT NULL
);
/* 2026-08-16 20:00:15 [5 ms] */ 
SELECT * FROM emplo_details LIMIT 100;
/* 2026-08-16 20:03:16 [7 ms] */ 
INSERT INTO emplo_details(employee_id,first_name,last_name,gender,phone_no,department,salary)VALUES
(1,'shruthi','singh','female','9462136654','finance',40000),
(2,'ramesh','sharma','male','9062856654','sales and marketing',35000),
(3,'abhishek','nair','male','1562137928','administration',44000),
(4,'priya','rajputh','female','4566788985','research and development',52000),
(5,'divya','gowda','female','86425956706','sales and marketing',33000),
(6,'rahul','shetty','male','96725906715','finance',60000),
(7,'rajesh','iyer','male','85462195378','administration',49000),
(8,'ananya','reddy','male','8462193093','public relations',30000),
(9,'dipa','patel','female','9948291379','information technology',50000);
/* 2026-08-16 20:03:24 [5 ms] */ 
SELECT * FROM emplo_details LIMIT 100;
/* 2026-08-16 20:06:05 [4 ms] */ 
SELECT department,COUNT(*) AS unique_department
FROM emplo_details
GROUP BY department
HAVING COUNT(*)<2 LIMIT 100;
/* 2026-08-16 20:09:49 [3 ms] */ 
SELECT*FROM emplo_details WHERE salary>50000;
/* 2026-08-16 20:12:42 [4 ms] */ 
SELECT first_name FROM emplo_details WHERE department ='finance' LIMIT 100;
/* 2026-08-16 20:15:24 [4 ms] */ 
SELECT * FROM emplo_details WHERE salary>=30000 AND salary<=50000 LIMIT 100;
/* 2026-08-16 20:19:49 [2 ms] */ 
SELECT first_name FROM emplo_details WHERE department IN ('sales and marketing') LIMIT 100;
/* 2026-08-16 20:23:03 [5 ms] */ 
SELECT * FROM emplo_details ORDER BY salary DESC LIMIT 100;
/* 2026-08-16 20:25:11 [3 ms] */ 
SELECT * FROM emplo_details WHERE salary>=40000 and salary<=50000 LIMIT 100;
/* 2026-08-16 20:27:56 [3 ms] */ 
SELECT * FROM emplo_details WHERE department='information technology' OR department='research and development' LIMIT 100;
/* 2026-08-16 20:29:59 [3 ms] */ 
SELECT* FROM emplo_details WHERE gender NOT IN('male');
/* 2026-08-17 21:29:56 [33 ms] */ 
-- Active: 1786077469429@@127.0.0.1@5432@employee;
/* 2026-08-17 21:29:56 [33 ms] */ 
-- Active: 1786077469429@@127.0.0.1@5432@employee;
