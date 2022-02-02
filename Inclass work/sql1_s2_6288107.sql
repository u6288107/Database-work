/* --------------------------------------------------------------
--   Please fill in your information in this comment block --  
--   Student ID: 6288107
--   Fullname: Pongsakorn Piboonpongpun
--   Section: 2
------------------------------------------------------------- */
DROP DATABASE IF EXISTS tinycompany; 
CREATE DATABASE IF NOT EXISTS tinycompany;
USE tinycompany;
-- Department Table 
CREATE TABLE department(
	dnumber		INT 		 PRIMARY KEY,  -- dnumber is a primary key
	dname		VARCHAR(20)  NOT NULL,
	location	VARCHAR(100), -- location is nullable 
	CONSTRAINT chk_dnumber CHECK (dnumber >= 1 AND dnumber <=20 ) -- dnumber range from 1 to 20
);

-- Project Table 
CREATE TABLE project(
	pnumber		INT 		 PRIMARY KEY,  -- dnumber is a primary key
	pname		VARCHAR(50)  NOT NULL,
	dept_no	 	INT 		 NOT NULL,
	CONSTRAINT FK_DeptProj FOREIGN KEY (dept_no) REFERENCES department(dnumber)
);

-- Write your DDL for employee and assignment here 

-- Employee Table
CREATE TABLE employee(
	fname VARCHAR(20) NOT NULL,
	lname VARCHAR(20) NOT NULL,
	ssn CHAR(9) PRIMARY KEY,
	bdate DATE NOT NULL,
	sex CHAR(1) NOT NULL,
	salary DECIMAL(12,2),
	dept_no INT,
    CONSTRAINT FK_EmpDept FOREIGN KEY (dept_no) REFERENCES department(dnumber),
    CONSTRAINT chk_sex CHECK (sex in ('M','F'))
);

-- Assignment Table
CREATE TABLE assignment(
	essn VARCHAR(9),
	projno INT,
	hours DECIMAL(9,2),
	hourlyrate DECIMAL(9,2),
	PRIMARY KEY(essn,projno),
	CONSTRAINT FK_AsmEmp FOREIGN KEY (essn) REFERENCES employee(ssn),
	CONSTRAINT FK_AsmPrj FOREIGN KEY (projno) REFERENCES project(pnumber)
);
-- Hint: Review the CREATE sequence, i.e., which tables should be created first



