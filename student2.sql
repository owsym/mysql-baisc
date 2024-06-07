USE college;

-- CREATE TABLE student2 (
-- RollNo INT PRIMARY KEY,
-- NAME VARCHAR(50),
-- MARKS INT NOT NULL,
-- GRADE VARCHAR(10),
-- CITY VARCHAR(30)
-- );

-- INSERT INTO student2 VALUES
-- (101, "ASIF" , 78, "C" , "DIKHAN"),
-- (102, "ADIL" , 93, "A" , "SGD"),
-- (103, "ZIA" , 85, "B" , "NAROWAL"),
-- (104, "GHULAM" , 12, "F" , "MULTAN"),
-- (105, "DILAWAR" , 96, "A" , "MULTAN"),
-- (106, "USMAN" , 82, "B" , "LAHORE");

-- SELECT grade, COUNT(rollno)
-- FROM student2
-- GROUP BY grade
-- ORDER BY grade;

-- SELECT IN DETAIL
-- SELECT * FROM student2
-- SELECT NAME , CITY FROM student2;
-- SELECT DISTINCT city FROM student2; (FOR unique value )--  

-- WHERE CLAUSE TO DEFINE SOME CONDITION (ARITHMETIC OPT =-*%)  (COMPRATION OPT = != < > <= >=) (LOGICAL OPT AND, NOT, OR, IN)  -- 
-- SELECT * FROM student2 WHERE marks >80;
-- SELECT * FROM student2 WHERE city = "sgd";-- 
-- SELECT * FROM student2 WHERE marks > 80 AND city = "sgd";
-- SELECT * FROM student2 WHERE marks > 80 OR city = "sgd";
-- SELECT * FROM student2 WHERE marks BETWEEN 80 AND 90;
-- SELECT * FROM student2 WHERE city IN ("SGD", "LAHORE");
-- SELECT * FROM student2 WHERE city NOT IN ("SGD", "LAHORE");

-- LIMIT CLAUSE
-- SELECT * FROM student2 LIMIT 3;
-- SELECT * FROM student2 WHERE marks >75 LIMIT 3;

-- ORDERBY CLAUSE-- 
-- SELECT * FROM student2 ORDER BY city ASC;
-- SELECT * FROM student2 ORDER BY marks DESC;
-- SELECT * FROM student2 ORDER BY marks DESC LIMIT 3;

-- AGGREGATE FUNCTION 1COUNT() 2MAX() 3MIN() 4SUM() 5AVG()
-- SELECT MAX(marks) FROM student2;
-- SELECT MIN(marks) FROM student2;
-- SELECT COUNT(marks) FROM student2;
-- SELECT SUM(marks) FROM student2;
-- SELECT AVG(marks) FROM student2;

-- GROUP BY CLAUSE MAKE A GROUP BY ROWS VALUES
-- SELECT city, COUNT(name) FROM student2 GROUP BY city;


-- SET SQL_SAFE_UPDATES = 0; 0 is off 1 is on

-- UPDATE student2
-- SET grade = 'O'
-- WHERE grade = 'A';

-- DELET FROM student2
-- WHERE marks < 33;
-- SELECT * FROM student2

-- FOREIGN KEY --
-- CREATE TABLE dept(
-- id INT PRIMARY KEY,
-- name VARCHAR(50)
-- );

-- CREATE TABLE teacher(
-- id INT PRIMARY KEY,
-- name VARCHAR(50),
-- dept_id INT,
-- FOREIGN KEY (dept_id) REFERENCES dept(id)
-- ON DELETE CASCADE
-- ON UPDATE CASCADE
-- );

-- for update and delete parent to childe --
-- ON DELETE CASCADE
-- ON UPDATE CASCADE        

-- INSERT INTO dept VALUES
-- (101, 'scince'),
-- (102, 'english'),
-- (103, 'urdu');

-- INSERT INTO teacher VALUES
-- (101, 'adam', 101),
-- (102, 'bob', 103),
-- (103, 'casey', 102),
-- (104, 'donald', 102);

-- UPDATE dept
-- SET name = 'I.T'
-- WHERE name = 'urdu';

-- SELECT * FROM dept

-- ALTER TABLE ADD, DROP , RENAME , CHANGE , MODIFY-- 

-- ALTER TABLE student2 
-- ADD COLUMN age INT;

-- ALTER TABLE student2 
-- DROP COLUMN age ;

-- ALTER TABLE college_stu 
-- RENAME student2;

-- ALTER TABLE student2 
-- MODIFY age VARCHAR(2) ;

-- ALTER TABLE student2 
-- CHANGE age stu_age INT;

-- SELECT * FROM student2

-- DROP OR TRUNCATE , DROP del the tab or TRUNCATE del the tabl data --

-- Practice Qs --
-- ALTER TABLE student2
-- CHANGE name full_name VARCHAR(50);

-- DELETE FROM student2
-- WHERE marks <80;

-- ALTER TABLE student2
-- DROP COLUMN grade;

-- SELECT * FROM student2

-- sub querry --

-- SELECT name, marks
-- FROM student2 
-- WHERE marks > (SELECT AVG(marks) FROM student2);

-- SELECT name, rollno
-- FROM student2 
-- WHERE rollno IN (
--      SELECT rollno
-- 	 FROM student2
--       WHERE rollno % 2 = 0);

-- SELECT MAX(marks)
-- FROM (SELECT * FROM student2 WHERE city = 'multan') AS temp;

-- MYSQL VIEWS --
-- CREATE VIEW view1 AS
-- SELECT rollno, name , marks FROM student2;

-- SELECT * FROM view1;