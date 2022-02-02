#1
SELECT c.CLASS_CODE as "class_code", co.COURSE_NAME as "course_name", p.EMP_FNAME as "emp_fname", p.EMP_LNAME as "emp_lname", COUNT(c.CLASS_CODE) as "num_stu"
FROM class c
JOIN course co ON co.COURSE_CODE = c.COURSE_CODE
JOIN professor p ON p.EMP_NUM = c.EMP_NUM
JOIN enroll e ON e.CLASS_CODE = c.CLASS_CODE
WHERE c.CLASS_SECTION = 3
GROUP BY c.CLASS_CODE;
#2
SELECT c.CLASS_CODE as "class_code", co.COURSE_NAME as "course_name"
FROM class c
JOIN course co ON co.COURSE_CODE = c.COURSE_CODE
WHERE CLASS_CODE NOT IN (SELECT CLASS_CODE FROM enroll);
#3
SELECT s.STU_FNAME as "first name", s.STU_LNAME as "last name", s.STU_NUM as "ID"
FROM student s
WHERE s.STU_FNAME LIKE "c%"
UNION 
SELECT p.EMP_FNAME, p.EMP_LNAME, p.EMP_NUM
FROM professor p
WHERE p.EMP_FNAME LIKE "c%";
#4
SELECT c.COURSE_CODE as "course_code"
FROM class c
WHERE COURSE_CODE NOT IN (SELECT COURSE_CODE FROM class WHERE CLASS_SECTION = 2)
ORDER BY c.COURSE_CODE ASC;
#5
SELECT DISTINCT s.STU_FNAME as "stu_fname"
FROM student s
WHERE STU_FNAME IN (SELECT EMP_FNAME FROM professor)
ORDER BY s.STU_FNAME ASC;
#6
SELECT s.STU_FNAME as "stu_fname", s.STU_LNAME as "stu_lname", s.STU_GPA as "stu_gpa"
FROM student s
WHERE s.STU_GPA > (SELECT AVG(STU_GPA) FROM student WHERE DEPT_CODE = "MATH")
ORDER BY STU_GPA DESC;
#7
CREATE VIEW vw_topstudents AS
SELECT s.STU_NUM as "stu_num", s.STU_FNAME as "stu_fname", s.STU_LNAME as "stu_lname", s.STU_GPA as "stu_gpa", s.DEPT_CODE as "dept_code"
FROM student s
WHERE s.STU_GPA = ANY(SELECT MAX(STU_GPA) AS STU_GPA FROM student GROUP BY DEPT_CODE)
ORDER BY s.DEPT_CODE ASC;

SELECT * FROM vw_topstudents;

