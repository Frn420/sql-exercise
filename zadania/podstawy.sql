-- Treść: https://www.mimuw.edu.pl/~oski/bd/lab01.php
--
-- Zadanie 3.
-- 1.
SELECT * FROM emp WHERE job = 'CLERK';

-- 2.
SELECT DISTINCT loc FROM dept;

-- 3.
SELECT ename, sal, job FROM emp WHERE ename LIKE 'T%' AND sal > 1500 AND sal < 2000 OR job = 'ANALYST';

-- 4.
SELECT ename FROM emp WHERE mgr IS NULL;

-- 5.
SELECT empno FROM emp WHERE mgr IS NOT NULL ORDER BY sal DESC;

-- 7.
SELECT SIN(3.14) FROM dual;

-- Zadanie 4.
-- 1.
INSERT INTO dept VALUES (50, 'IT', 'WARSAW');

-- 2.
INSERT INTO emp (empno, ename, job, sal, deptno) VALUES (8000, 'ROSZKIEWIC', 'INFORMATY', 2000, 50);

-- 3.
UPDATE emp SET sal = sal * 1.23 WHERE ename = 'ROSZKIEWIC';

-- 4.
DELETE FROM emp WHERE sal > 2460;

-- 5.
INSERT INTO emp SELECT 8015, ename, job, mgr, hiredate, sal, comm, deptno FROM emp WHERE ename = 'MILLER';
UPDATE emp SET sal = sal / 2 WHERE ename = 'MILLER';


-- Zadanie 4.
CREATE TABLE Student (
    imie VARCHAR2(12) NOT NULL,
    nazwisko VARCHAR2(20) NOT NULL,
    nr_indeksu NUMBER(6) NOT NULL UNIQUE,
    aktywny VARCHAR2(3) DEFAULT 'YES' NOT NULL,
    data_przyjecia DATE NOT NULL
);

DROP TABLE student;