-- Treść: https://www.mimuw.edu.pl/~oski/bd/lab02.php
--
-- Zadanie 1.
-- 1.
SELECT ename, loc FROM emp NATURAL JOIN dept WHERE job = 'SALESMAN';

-- 2.
SELECT A.ename, B.ename FROM emp A LEFT JOIN emp B ON A.mgr = B.empno;

-- 3.
SELECT A.ename, loc FROM emp A LEFT JOIN emp B ON A.mgr = B.empno LEFT JOIN dept ON B.deptno = dept.deptno;

-- 4.
SELECT dept.deptno, dname, loc FROM emp RIGHT JOIN dept ON emp.deptno = dept.deptno WHERE empno IS NULL;

-- 5.
SELECT A.ename, B.ename FROM emp A LEFT JOIN emp B ON A.mgr = B.empno AND B.sal > 3000;

-- 6.
SELECT A.ename FROM emp A LEFT JOIN emp B ON A.hiredate < B.hiredate WHERE ROWNUM <= 1;

-- Zadanie 2.
-- 1.
SELECT loc FROM dept WHERE deptno IN (SELECT deptno FROM emp WHERE job = 'SALESMAN');

-- 2.
SELECT ename, (SELECT ename FROM emp B WHERE B.empno = A.mgr) mgr FROM emp A;

-- 3.
SELECT ename, (SELECT loc FROM dept WHERE deptno = (SELECT deptno FROM emp B WHERE B.empno = A.mgr)) loc FROM emp A;

-- 4.
SELECT * FROM dept WHERE deptno NOT IN (SELECT deptno FROM emp);

-- 5.
SELECT ename, (SELECT ename FROM emp B WHERE B.empno = A.mgr AND B.sal > 3000) mgr FROM emp A;

-- 6.
SELECT ename FROM emp WHERE hiredate <= ALL (SELECT hiredate FROM emp);