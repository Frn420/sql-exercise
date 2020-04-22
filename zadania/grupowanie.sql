-- Treść: https://www.mimuw.edu.pl/~oski/bd/lab03.php
--
-- Zadanie 1.
-- 1.
SELECT job, COUNT(*), AVG(sal) FROM emp GROUP BY job;

-- 2.
SELECT deptno, COUNT(comm) FROM emp GROUP BY deptno;

-- 3.
SELECT job, COUNT(*), MAX(sal) FROM emp WHERE sal >= 1000 GROUP BY job HAVING COUNT(*) >= 3;

-- 4.
SELECT deptno, job FROM emp GROUP BY deptno, job HAVING MAX(sal) - MIN(sal) > 300;

-- 5.
SELECT deptno, AVG(sal) FROM emp GROUP BY deptno HAVING COUNT(*) - COUNT(mgr) > 0;

-- 6.
SELECT mgr FROM emp GROUP BY mgr HAVING COUNT(DISTINCT deptno) > 1;

-- 7.
SELECT MIN(ename), job FROM emp GROUP BY job, deptno HAVING COUNT(*) = 1 ORDER BY MIN(sal) DESC;

-- Zadanie 2.
-- 2.
SELECT ename FROM emp WHERE mgr IS NOT NULL
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr;

-- 3.
SELECT ename FROM emp
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr AND ename <> 'BLAKE';

-- 4.
SELECT ename FROM emp WHERE job <> 'SALESMAN'
START WITH job = 'SALESMAN'
CONNECT BY PRIOR mgr = empno GROUP BY ename;