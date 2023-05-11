SELECT *
FROM TAB;

DESC BONUS;

DESC DEPT;

DESC EMP;

DESC SALGRADE;

-- Structured Query Language : SQL
-- Data Query Language : DQL(데이터 조회)

-- select 컬럼명1, 컬럼명2, .....컬럼명n -- 컬럼명은 필요한 만큼만 작성한다.
-- from 테이블명;

SELECT DEPTNO,
       DNAME,
       LOC
FROM DEPT;

SELECT *
FROM DEPT;

SELECT DNAME,
       LOC
FROM DEPT;

SELECT *
FROM EMP;

-- 중복데이터 한번만 검색하기
SELECT JOB
FROM EMP;

SELECT DISTINCT (JOB)
FROM EMP;

-- 컬럼을 사용한 데이터 연산
SELECT *
FROM EMP;

-- +, -, *, /
SELECT ENAME,
       SAL,
       SAL * 12
FROM EMP;

-- 컬럼명에 별칭사용하기 (as는 생략 가능)
SELECT ENAME    AS 사원명,
       SAL      AS 급여,
       SAL * 12 AS 연봉
FROM EMP;

-- 조회시 값의 정렬(내림, 오름)
-- asc 는 기본값이다. (생략가능하다)
-- 가장 마지막에 작성한다.
SELECT *
FROM EMP
ORDER BY SAL DESC;

-- asc(오름) / desc(내림)

SELECT *
FROM EMP
ORDER BY SAL ASC,
         ENAME DESC;

-- 첫번째는 전체데이터를 정렬하고, 두번재는 같은 겂을 그룹으로 묶어서 정렬한다.

-- 조건절
-- where 조건식(컬럼명 = 값) --> 참 / 거짓
-- <, >, <=, >=, =, !=, or <>
SELECT *
FROM EMP
WHERE SAL = 800;

SELECT *
FROM EMP
WHERE SAL >= 3000;

SELECT *
FROM EMP
WHERE DEPTNO = 10;

-- 문자를 조건절에 사용할 때
-- 조건절에서의 문자는 대소문자를 구분한다.
-- 문자를 반드시 '' 로 묶어주어야 한다. ("" 안됩니다.)
SELECT *
FROM EMP
WHERE ENAME = 'SMITH';

-- 날짜를 조건절에 사용할 떄
-- 크기 비교가 가능하다
-- ''로 묶어준다.
-- 80/09/30 // 년월일시분초 표준시 2023/05/01 12:30:22 GTM 9
SELECT *
FROM EMP
WHERE HIREDATE = '80/12/17';

-- 1980/12/17

-- 논리연산자
-- and, or, not
SELECT *
FROM EMP
WHERE DEPTNO = 10
  AND SAL >= 2000;

SELECT *
FROM EMP
WHERE SAL >= 1000
  AND SAL <= 3000;

SELECT *
FROM EMP
WHERE SAL >= 1000
  AND SAL <= 3000
  AND DEPTNO = 10;

SELECT *
FROM EMP
WHERE DEPTNO = 10
   OR SAL >= 2000;

SELECT *
FROM EMP
WHERE SAL < 1000
   OR SAL > 3000
ORDER BY SAL DESC;

SELECT *
FROM EMP
WHERE NOT SAL <= 3000;

-- 논리연산자의 다른 표현
-- and
SELECT *
FROM EMP
WHERE SAL BETWEEN 1000
          AND 2000;

-- sal >= 1000 and sal <= 2000

SELECT *
FROM EMP
WHERE SAL IN (800,
              950,
              5000);

-- sal = 800 or sal = 950 or sal = 5000

SELECT *
FROM EMP
WHERE SAL NOT IN (800,
                  950,
                  5000);

-- Like연산자
-- %, _ (와이드카드)
-- %는 나머지 문자 전체를 대신한다(선택)
-- _한문자를 대신한다(필수) _ _ _, __A, A____
-- where 컬럼명 like 값
SELECT *
FROM EMP
WHERE ENAME = 'F';

SELECT *
FROM EMP
WHERE ENAME LIKE 'F%';

SELECT *
FROM EMP
WHERE ENAME LIKE '%A%';

SELECT *
FROM EMP
WHERE ENAME LIKE 'A____';

SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';

SELECT *
FROM EMP
WHERE COMM = NULL;

-- null데이터는 연산자 사용이 불가하다.

-- is null
-- is not null
SELECT *
FROM EMP
WHERE COMM IS NULL;

SELECT *
FROM EMP
WHERE COMM IS NOT NULL;

-- 집합 연산자
-- 두개 이상의 select 구문을 사용하여 데이터를 조회한다.
-- 두개의 커리문의 컬럼의 개수와 타입이 일치해야한다. (컬럼의 이름은 같지 않아도 된다.)
-- 합집합, 교집합, 차집합

-- select
-- from
-- 집합연산자(union, intersect, minus)
-- select
-- from ;
-- 합집합
SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE DEPTNO = 10
UNION
SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE DEPTNO = 30;

-- 교집합
SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE DEPTNO = 10
INTERSECT
SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE DEPTNO = 10;

SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE DEPTNO = 10
MINUS
SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE DEPTNO = 30;

-- 문제 시작
SELECT *
FROM EMP
WHERE ENAME LIKE '%S';

SELECT EMPNO,
       ENAME,
       JOB,
       SAL,
       DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN';

SELECT EMPNO,
       ENAME,
       JOB,
       SAL,
       DEPTNO
FROM EMP
WHERE SAL > 2000
  AND DEPTNO IN (20,
                 30);

SELECT EMPNO,
       ENAME,
       JOB,
       SAL,
       DEPTNO
FROM EMP
WHERE SAL > 2000
  AND DEPTNO = 20
UNION
SELECT EMPNO,
       ENAME,
       JOB,
       SAL,
       DEPTNO
FROM EMP
WHERE SAL > 2000
  AND DEPTNO = 30;

SELECT *
FROM EMP
WHERE SAL < 2000
   OR SAL > 3000;

SELECT ENAME,
       EMPNO,
       SAL,
       DEPTNO
FROM EMP
WHERE ENAME LIKE '%E%'
  AND DEPTNO = 30
  AND SAL NOT BETWEEN 1000
    AND 2000;

SELECT *
FROM EMP
WHERE COMM IS NULL
  AND MGR IS NOT NULL
  AND JOB IN ('MANAGER',
              'CLERK')
  AND NOT ENAME LIKE '_L%';

-- 문제 끝

-- 함수
-- 문자함수,숫자함수,날짜함수
-- 형변환 함수
-- 사용자 정의 함수
-- 문자함수
-- upper(), lower(), initcap()
SELECT *
FROM EMP;

SELECT LOWER(ENAME),
       INITCAP(ENAME)
FROM EMP;

SELECT *
FROM EMP
WHERE LOWER(ENAME) = 'smith';

-- length() : 문자열의 길이확인
SELECT ENAME,
       LENGTH(ENAME),
       LENGTH('홍길동')
FROM EMP
WHERE LENGTH(ENAME) > 5;

-- 문자열 추출하기
-- substr(문자열, 시작위치, 문자의 길이)  // 시작위치값은 1부터 시작
-- substr(문자열, 시작위치)
-- 'abcdefg'   'abcdefg'
--  1234567    -7-6-5-4-3-2-1
SELECT JOB,
       SUBSTR(JOB,
              1,
              2),
       SUBSTR(JOB,
              5)
FROM EMP;

SELECT JOB,
       SUBSTR(JOB,
              -LENGTH(JOB)),
       SUBSTR(JOB,
              -LENGTH(JOB),
              2)
FROM EMP;

-- instr() : 특정 문자위치 찾기
-- 문자를 못찾으면 0 이 반환된다.
SELECT INSTR('HELLO, ORACLE',
             'L'),
       INSTR('HELLO, ORACLE',
             'L',
             5),
       INSTR('HELLO, ORACLE',
             'L',
             2,
             3)
FROM DUAL;

SELECT ENAME
FROM EMP
WHERE INSTR(ENAME,
            'S') > 0;

--where ename like '%S%';
-- replace()
SELECT '010-1234-5678' AS REPLACE_BEFORE,
       REPLACE('010-1234-5678',
               '-',
               ' '),
       REPLACE('010-1234-5678',
               '-')
FROM DUAL;

-- lpad(), rpad()
SELECT 'Oracle',
       LPAD('Oracle',
            10,
            '#'),
       RPAD('Oracle',
            10,
            '#')
FROM DUAL;

-- concat()
SELECT CONCAT(EMPNO,
              ENAME),
       JOB
FROM EMP;

SELECT EMPNO || '' || ENAME,
       JOB
FROM EMP;

-- 입사연도
SELECT *
FROM EMP
WHERE HIREDATE BETWEEN '1980/01/01'
          AND '1981/12/31';

SELECT *
FROM EMP
WHERE ENAME LIKE '%E';

SELECT *
FROM EMP
WHERE ENAME LIKE '__R%';

-- substr()
SELECT *
FROM EMP
WHERE SUBSTR(ENAME,
             3,
             1) = 'R';

-- instr()
SELECT *
FROM EMP
WHERE INSTR(ENAME,
            'R',
            3,
            1) = 3;

SELECT *
FROM EMP
WHERE SUBSTR(HIREDATE,
             1,
             2) = '80'
   OR SUBSTR(HIREDATE,
             1,
             2) = '81';

SELECT *
FROM EMP
WHERE SUBSTR(ENAME,
             -1,
             1) = 'E';

-- 숫자함수
-- round(), trunc(), ceil(), floor(), mod()
SELECT 1234.5678 AS NUM,
       ROUND(1234.5678),
       ROUND(1234.5678,
             2),
       ROUND(1234.5678,
             -1)
FROM DUAL;

SELECT 1234.5678 AS NUM,
       TRUNC(1234.5678),
       TRUNC(1234.5678,
             2),
       TRUNC(1234.5678,
             -2)
FROM DUAL;

SELECT 1234.5678 AS NUM,
       CEIL(1234.5678),
       FLOOR(1234.5678)
FROM DUAL;

SELECT MOD(13,
           2),
       MOD(20,
           5)
FROM DUAL;

-- 날짜 함수
-- +, -
-- add_months(), months_between(), next_day(), last_day()
-- round(), trunc()
SELECT SYSDATE - 1 AS YESTERDAY,
       SYSDATE     AS TODAY,
       SYSDATE + 1 AS TOMORROW
FROM DUAL;

DESC EMP;

SELECT SYSDATE - HIREDATE                AS 근속일수,
       ROUND((SYSDATE - HIREDATE) / 365) AS 근속연수
FROM EMP;

SELECT HIREDATE,
       ADD_MONTHS(HIREDATE,
                  3)
FROM EMP;

-- cc, yyyy, q, month, hh
SELECT SYSDATE,
       ROUND(SYSDATE,
             'month'),
       ROUND(SYSDATE,
             'yyyy')
FROM DUAL;

-- 숫자 날짜 문자를 형변환
-- to_char(), to_number(), to_date()
-- 날짜 -> 문자
-- cc, yyyy, mm, dd, dy, w, hh, hh12, mi, ss
SELECT SYSDATE,
       TO_CHAR(SYSDATE,
               'yyyy-mm-dd'),
       TO_CHAR(SYSDATE,
               'mm')
FROM DUAL;

SELECT SYSDATE,
       TO_CHAR(SYSDATE,
               'hh:mi:ss dy')
FROM DUAL;

-- 숫자 -> 문자
SELECT TO_CHAR(1234,
               'L999,999'),
       TO_CHAR(1234,
               '000,000')
FROM DUAL;

SELECT SAL,
       TO_CHAR(SAL,
               'L999,999')
FROM EMP;

-- 문자 -> 숫자
-- 묵시적(암시적) 형변환
-- 강제형변환 : to_number()
SELECT 1300 - '1500',
       '1300' + '1500' -- 묵시적 형변환
FROM DUAL;

SELECT TO_NUMBER('1,300',
                 '999,999') - TO_NUMBER('1,500',
                                        '999,999')
FROM DUAL;

-- 문자 -> 날짜
-- '2023-05-02', '20230502'
SELECT TO_DATE('2023-05-02',
               'yyyy-mm-dd'),
       TO_DATE('20230502',
               'yyyy-mm-dd')
FROM DUAL;

SELECT *
FROM EMP
WHERE HIREDATE >= TO_DATE(19800101,
                          'yyyy-mm-dd');

-- 예외적으로 숫자 -> 날짜

-- 기타함수
-- nvl(null,바꾸고싶은 값)
-- null 데이터를 원하는 값으로 변경하는 함수
-- nvl(a, b) a와 b의 타입이 일치해야한다.
SELECT ENAME,
       SAL,
       SAL * 12          AS ANN,
       COMM,
       SAL * 12 + NVL(COMM,
                      0) AS REALANN
FROM EMP;

-- nvl2(a, b, c)
-- nvl2(null, null이 아닌 경우의 값, null인 경우의 값)

SELECT ENAME,
       COMM,
       NVL2(COMM,
            'o',
            'x')
FROM EMP;

-- decode() => switch()
-- case => if()

-- decode(비교대상값,
--            값1,결과1,
--            값2,결과2,
--            값3,결과3
--            ,값)  defalut와 같다.
SELECT DEPTNO,
       DECODE(DEPTNO,
              10,
              'ACCOUNTING',
              20,
              'RESEARCH',
              30,
              'SALES',
              40,
              'OPERATIONS',
              'etc') AS DNAME
FROM EMP;

-- case
--case
--    when 조건식  then 결과
--    when 조건식  then 결과
--    when 조건식  then 결과
--    else
--end as 'xxx'
SELECT ENAME,
       COMM,
       CASE
           WHEN COMM IS NULL THEN
               '수당이 없는 사원'
           WHEN COMM = 0 THEN
               '수당을 못 받은 사원'
           WHEN COMM > 0 THEN
                   '수당은 $'
                   || COMM
           ELSE
               '미확인'
           END AS COMMITION
FROM EMP;

-- 사원테이블에 매니져 null인 사원이 있다.
-- null -> CEO
SELECT ENAME,
       NVL(TO_CHAR(MGR,
                   '9999'),
           'CEO') AS MGR
FROM EMP
WHERE MGR IS NULL;

-- 문제 시작
SELECT EMPNO,
       SUBSTR(EMPNO,
              1,
              2) || '**' AS MASKING_EMPNO,
       ENAME,
       RPAD(SUBSTR(ENAME,
                   1,
                   1),
            LENGTH(ENAME),
            '*')         AS MASKING_ENAME
FROM EMP
WHERE LENGTH(ENAME) >= 5
  AND LENGTH(ENAME) < 6;

SELECT EMPNO,
       ENAME,
       SAL,
       TRUNC(SAL / 21.5,
             2),
       ROUND(SAL / (21.5 * 8),
             1)
FROM EMP;

SELECT *
FROM EMP;

SELECT EMPNO,
       ENAME,
       MGR,
       CASE
           WHEN MGR IS NULL THEN
               '0000'
           WHEN SUBSTR(MGR, 1, 2) = '75' THEN
               '5555'
           WHEN SUBSTR(MGR, 1, 2) = '76' THEN
               '6666'
           WHEN SUBSTR(MGR, 1, 2) = '77' THEN
               '7777'
           WHEN SUBSTR(MGR, 1, 2) = '78' THEN
               '8888'
           ELSE
               TO_CHAR(MGR)
           END AS CHG_MGR
FROM EMP;

-- 문제 끝

-- 그룹함수
-- 단일행 함수, 다중행 함수
-- sum(), avg(), max(), min(), count()
SELECT SUM(SAL) AS 급여합계
FROM EMP;

-- select ENAME, max(SAL)
-- from EMP;

SELECT COUNT(COMM)
FROM EMP;

SELECT COUNT(*)
FROM EMP;

SELECT COUNT(DISTINCT JOB)
FROM EMP;

SELECT COUNT(*),
       COUNT(COMM)
FROM EMP;

SELECT MIN(SAL)
FROM EMP;

SELECT AVG(SAL)
FROM EMP;

SELECT MAX(SAL)
FROM EMP
WHERE DEPTNO = 20;

SELECT SUM(SAL),
       SUM(DISTINCT SAL)
FROM EMP;

-- group by
-- select
-- from
-- where
-- group by
-- having -- group by를 위한 조건절
-- order by -- 마지막에 작성한다.
SELECT AVG(SAL)
FROM EMP
WHERE DEPTNO = 10
UNION
SELECT AVG(SAL)
FROM EMP
WHERE DEPTNO = 20
UNION
SELECT AVG(SAL)
FROM EMP
WHERE DEPTNO = 30;

SELECT DEPTNO,
       JOB,
       AVG(SAL)
FROM EMP
GROUP BY DEPTNO,
         JOB
ORDER BY DEPTNO;

select DEPTNO, JOB, avg(SAL)
from EMP
-- where avg(SAL) >= 2000 -- 일반조건절에서는 그룹함수 사용불가
group by DEPTNO, JOB
having avg(SAL) >= 2000 -- 조건절을 구성시 그룹함수를 사용한다.
order by DEPTNO;

-- where과 having 함께 사용하는 순서
-- where -> group by -> having을 실행한다.
select DEPTNO, JOB, avg(SAL)
from EMP
where SAL <= 3000
group by DEPTNO, JOB
having avg(SAL) >= 2000
order by DEPTNO, JOB;

select DEPTNO, JOB, SAL
from EMP
where SAL <= 2000
order by DEPTNO, JOB;

-- 그룹화 관련 함수
-- rollup(), cube(), grouping_sets()
-- 그룹화된 데이터의 결과를 이용해서 합계를 출력한다
select DEPTNO, JOB, count(*), max(SAL), min(SAL), avg(SAL)
from EMP
group by rollup (DEPTNO, JOB) -- (a, b) : a, b -> a -> 전체결과
order by DEPTNO, JOB;

select DEPTNO, JOB, count(*), max(SAL), min(SAL), avg(SAL)
from EMP
group by cube (DEPTNO, JOB) -- (a, b, c) : a, b -> b, c -> a, c -> a -> b -> c -> 전체결과
order by DEPTNO, JOB;

-- 가장 입사일이 빠른 사람 조회하기
select min(HIREDATE)
from EMP;

-- 부서별로 가장 입사일이 빠른 사람 조회하기
-- 부서 인원이 3명 이상인 부서만 조회하기
select DEPTNO, min(HIREDATE), count(*)
from EMP
group by DEPTNO
having count(*) >= 4;

select DEPTNO, JOB, avg(SAL)
from EMP
where SAL >= 2000
group by DEPTNO, JOB
having DEPTNO = 10;

select DEPTNO, trunc(avg(SAL)) as AVG_SAL, max(SAL) as MAX_SAL, min(SAL) as MIN_SAl, count(*) as CNT
from EMP
group by DEPTNO;

select JOB, count(*)
from EMP
group by JOB
having count(*) >= 3;

select extract(year from HIREDATE) as HIRE_YEAR, DEPTNO, count(*) as CNT
from EMP
group by extract(year from HIREDATE), DEPTNO
order by extract(year from HIREDATE);

select nvl2(COMM, 'O', 'X') as EXIST_COMM, count(*) as CNT
from EMP
group by nvl2(COMM, 'O', 'X')
order by nvl2(COMM, 'O', 'X') desc;

select DEPTNO, extract(year from HIREDATE), count(*), max(SAL), sum(SAL), avg(SAL)
from EMP
group by rollup (DEPTNO, extract(year from HIREDATE));

-- ERD(Entity Relationship Diagram)
-- SQL(ORACLE, MYSQL), NON-SQL(MOGODB)
-- SMITH
select ENAME, DEPTNO
from EMP
where ENAME = 'SMITH';

select DEPTNO, DNAME
from DEPT
where DEPTNO = 20;

-- cross join
-- 12 * 4 = 48
select ENAME, DNAME
from EMP,
     DEPT;

-- equl join
select ENAME, EMP.DEPTNO, DNAME
from EMP,
     DEPT
where EMP.DEPTNO = DEPT.DEPTNO;

-- 테이블 이름 별칭
select ENAME, e.DEPTNO, DNAME
from EMP e,
     DEPT d
where e.DEPTNO = d.DEPTNO;

-- 조인구문에서 일반조건 추가하기
select e.ENAME, e.DEPTNO, d.DNAME, SAL
from EMP e,
     DEPT d
where e.DEPTNO = d.DEPTNO
  and SAL >= 3000;

-- non equal join
-- 값의 범위로 조인하는 방식
select ENAME, SAL, GRADE
from EMP,
     SALGRADE
where SAL between LOSAL and HISAL;

select ENAME, e.DEPTNO, DNAME, GRADE
from EMP e,
     DEPT d,
     SALGRADE s
where e.DEPTNO = d.DEPTNO
  and SAL between LOSAL and HISAL;

-- self join
select e1.ENAME || '의 매니저의 이름은 ' || e2.ENAME || '입니다.'
from EMP e1,
     EMP e2
where e1.MGR = e2.EMPNO
order by e1.EMPNO;

-- outer join
-- 조인시 누락되는 레코드를 함께 조회가 되도록 하는 방식
-- (+) : 조인 조건절의 컬럼 뒤에 표시한다.
-- 값이 없는 쪽 컬럼 뒤에 붙인다.
select e1.ENAME || '의 매니저의 이름은 ' || e2.ENAME || '입니다.'
from EMP e1,
     EMP e2
where e1.MGR = e2.EMPNO(+)
order by e1.EMPNO;

select ENAME, DEPT.DEPTNO, DNAME, LOC
from EMP,
     DEPT
where EMP.DEPTNO(+) = DEPT.DEPTNO;

-- cross join
-- equi join
-- non equi join
-- self join
-- outer join
-- 표준조인(ANSI-JOIN)
select *
from EMP
         cross join DEPT;

select ENAME, e.DEPTNO, SAL, DNAME, LOC
from EMP e
         inner join DEPT d
                    on e.DEPTNO = d.DEPTNO;

select ENAME, e.DEPTNO, SAL, DNAME, LOC
from EMP e
         inner join DEPT d
                    on e.DEPTNO = d.DEPTNO
where ENAME = 'FORD';

-- 컬럼에 이름이 동일할 경우에 사용
select ENAME, DEPTNO, SAL, DNAME, LOC
from EMP
         inner join DEPT
                    using (DEPTNO);

-- natural join시 공통컬럼에는 테이블 이름을 적어주지 않는다.
select ENAME, DEPTNO, SAL, DNAME, LOC
from EMP
         natural join DEPT;

select ENAME, SAL, GRADE
from EMP e
         inner join SALGRADE s
                    on e.SAL between s.LOSAL and s.HISAL;

select e1.ENAME || '의 매니저의 이름은 ' || e2.ENAME || '입니다.'
from EMP e1
         inner join
     EMP e2
     on e1.MGR = e2.EMPNO
order by e1.EMPNO;

-- ANSI JOIN(표준 조인)
-- CROSS JOIN
-- INNER JOIN
-- OUTER JOIN [ left || right || full ] outer join
select e1.ENAME, e2.ENAME
from EMP e1
         left outer join EMP e2
                         on e1.MGR = e2.EMPNO;

select e1.ENAME, e2.ENAME
from EMP e1
         full outer join EMP e2
                         on e1.MGR = e2.EMPNO
order by e1.ENAME;

select ENAME, SAL, DNAME, GRADE
from EMP e
         inner join DEPT d
                    on e.DEPTNO = d.DEPTNO
         inner join SALGRADE s
                    on e.SAL between s.LOSAL and s.HISAL;

-- 문제 시작
select e.DEPTNO, DNAME, EMPNO, SAL
from EMP e,
     DEPT d
where e.DEPTNO = d.DEPTNO
  and SAL > 2000;

select e.DEPTNO, DNAME, EMPNO, SAL
from EMP e
         inner join DEPT d
                    on e.DEPTNO = d.DEPTNO
where SAL > 2000;
----------------------------------------------
select e.DEPTNO, DNAME, trunc(avg(SAL)) as AVG_SAL, max(SAL) as MAX_SAL, min(SAL) as MIN_SAL, count(*) as CNT
from EMP e,
     DEPT d
where e.DEPTNO = d.DEPTNO
group by e.DEPTNO, DNAME;

select e.DEPTNO, DNAME, trunc(avg(SAL)) as AVG_SAL, max(SAL) as MAX_SAL, min(SAL) as MIN_SAL, count(*) as CNT
from EMP e
         inner join DEPT d
                    on e.DEPTNO = d.DEPTNO
group by e.DEPTNO, DNAME;
----------------------------------------------
select d.DEPTNO, DNAME, EMPNO, ENAME, JOB, SAL
from EMP e,
     DEPT d
where e.DEPTNO(+) = d.DEPTNO
order by DEPTNO, ENAME;

select DEPTNO, DNAME, EMPNO, ENAME, JOB, SAL
from EMP e
         right outer join DEPT d
                          using (DEPTNO)
order by DEPTNO, ENAME;
----------------------------------------------
select d.DEPTNO  as DEPTNO,
       DNAME,
       e1.EMPNO  as EMPNO,
       e1.ENAME  as ENAME,
       e1.MGR    as MGR,
       e1.SAL    as SAL,
       e1.DEPTNO as DEPTNO_1,
       LOSAL,
       HISAL,
       GRADE,
       e2.EMPNO  as MGR_ENPNO,
       e2.ENAME  as MGR_ENAME
from EMP e1,
     DEPT d,
     SALGRADE s,
     EMP e2
where e1.DEPTNO(+) = d.DEPTNO
  and e1.SAL between s.LOSAL(+) and s.HISAL(+)
  and e1.MGR = e2.EMPNO(+)
order by d.DEPTNO, e1.EMPNO;

select d.DEPTNO  as DEPTNO,
       DNAME,
       e1.EMPNO  as EMPNO,
       e1.ENAME  as ENAME,
       e1.MGR    as MGR,
       e1.SAL    as SAL,
       e1.DEPTNO as DEPTNO_1,
       LOSAL,
       HISAL,
       GRADE,
       e2.EMPNO  as MGR_ENPNO,
       e2.ENAME  as MGR_ENAME
from EMP e1
         right outer join DEPT d
                          on e1.DEPTNO = d.DEPTNO
         left outer join SALGRADE s
                         on e1.SAL between s.LOSAL and s.HISAL
         left outer join EMP e2
                         on e1.MGR = e2.EMPNO
order by d.DEPTNO, e1.EMPNO;
-- 문제 끝

-- 서브쿼리
-- 단일행, 다중행
-- select *
-- from EMP
-- where SAL=(
--         select
--         from
--         where
--     );

select ENAME, DNAME
from EMP,
     DEPT
where EMP.DEPTNO = DEPT.DEPTNO
  and ENAME = 'SMITH';

select DNAME
from DEPT
where DEPTNO = (select DEPTNO
                from EMP
                where ENAME = 'SMITH');

select max(SAL)
from EMP;

select ENAME, SAL
from EMP
where SAL = (select max(SAL)
             from EMP);

-- 이름, 급여, 부서번호, 부서명
-- 부서번호가 20번
-- 전체사원의 급여의 평균을 초과하는 사원
select ENAME, SAL, EMP.DEPTNO, DNAME
from EMP
         inner join DEPT
                    on EMP.DEPTNO = DEPT.DEPTNO
                        and EMP.DEPTNO = 20
                        and SAL > (select avg(SAL)
                                   from EMP);

-- 서브쿼리문의 결과의 갯수
-- 단일행 서브쿼리
-- 다중행 서브쿼리

-- 작성위치
-- where : 서브쿼리
-- from : 인라인 뷰
-- select : 컬럼형식
select ENAME, DEPTNO, (select DNAME from DEPT where DEPTNO = e.DEPTNO) as dname
from EMP e
where ENAME = 'SMITH';

-- 다중행 서브쿼리문
-- 비교연산자 사용불과
-- in(), all(), any(), some(), exits()
-- select
-- from
-- where SAL 연산자 (
--             select
--             from
-- );

select *
from EMP
where DEPTNO in (20, 30);

select *
from EMP
where SAL in (select max(SAL)
              from EMP
              group by DEPTNO);

-- any()
select *
from EMP
where SAL > any (select max(SAL) -- 서브쿼리문의 결과값의 최소값보다 큰 값
                 from EMP
                 group by DEPTNO);

-- all()
select *
from EMP
where SAL > all (select SAL -- 가장 큰 값보다 큰 값
                 from EMP
                 where DEPTNO = 30);

select *
from EMP
where exists(select DNAME
             from DEPT
             where DEPTNO = 50);

-- 다중열 서브쿼리
select *
from EMP
where (DEPTNO, SAL) = (select DEPTNO, SAL
                       from EMP
                       where ENAME = 'SMITH');

select *
from EMP
where (DEPTNO, SAL) in (select DEPTNO, max(SAL)
                        from EMP
                        group by DEPTNO);

-- 인라인뷰(가상테이블)
select ee.*
from (select ENAME, SAL, COMM, DEPTNO from EMP) ee;

select ENAME, d.DEPTNO, DNAME, LOC
from (select * from EMP where DEPTNO = 10) e10,
     (select * from DEPT) d
where e10.DEPTNO(+) = d.DEPTNO;

-- with
with e10 as (select * from EMP where DEPTNO = 10),
     d as (select * from DEPT)
select ENAME, d.DEPTNO, DNAME, LOC
from e10,
     d
where e10.DEPTNO(+) = d.DEPTNO;

-- 서브쿼리문을 select 절에 작성한다.
select EMPNO,
       JOB,
       SAL,
       (select GRADE from SALGRADE where EMP.SAL between LOSAL and HISAL) as SALGRADE,
       DEPTNO,
       (select DNAME from DEPT where EMP.DEPTNO = DEPTNO)                 as DNAME
from EMP;

-- 문제 시작
select JOB, EMPNO, ENAME, trunc(SAL) as SAL, e.DEPTNO, DNAME
from EMP e,
     DEPT d
where e.DEPTNO = d.DEPTNO
  and JOB = (select job from EMP where ENAME = 'ALLEN');

select EMPNO, ENAME, DNAME, HIREDATE, LOC, trunc(SAL) as SAL, GRADE
from EMP e,
     DEPT d,
     SALGRADE s
where e.DEPTNO = d.DEPTNO
  and e.SAL between s.LOSAL and s.HISAL
  and SAL > (select avg(SAL) from EMP)
order by SAL desc, EMPNO;

select EMPNO, ENAME, JOB, e.DEPTNO, DNAME, LOC
from EMP e,
     DEPT d
where e.DEPTNO = d.DEPTNO
  and e.DEPTNO = 10
  and JOB not in (select distinct JOB from EMP where DEPTNO = 30);

select EMPNO, ENAME, SAL, GRADE
from EMP e,
     SALGRADE s
where e.SAL between s.LOSAL and s.HISAL
  and SAL > (select max(SAL)
             from EMP
             where JOB = 'SALESMAN')
order by EMPNO;

select EMPNO, ENAME, SAL, GRADE
from EMP e,
     SALGRADE s
where e.SAL between s.LOSAL and s.HISAL
  and SAL > all (select distinct SAL
                 from EMP
                 where JOB = 'SALESMAN')
order by EMPNO;
-- 문제 끝
-- DDL : Data Definition Language
-- 데이터 정의어
-- 객체를 생성하는 명령어 (table을 생성)
create table dept_temp
as
select *
from dept;

select *
from dept_temp

-- DML : Data Manipulation Language
-- 데이터 조작어
-- insert : 신규데이터 추가
-- update: 기존데이터 수정
-- delete : 기존데이터 삭제
-- CRUD
-- c(insert) r(select) u(update) d(delete)

-- 컬럼의 갯수와 값의 갯수가 동일해야 한다.
-- insert into 테이블명 (컬럼명1, 컬럼명2, ...)
-- values (값1, 값2)
insert into DEPT_TEMP(DEPTNO, DNAME, LOC)
values (50, 'PROGRAMMER', 'SEOUL');

insert into DEPT_TEMP(DEPTNO, DNAME, LOC)
values (50, 'PROGRAMMER', NULL);

insert into DEPT_TEMP(DEPTNO, DNAME)
values (60, 'PROGRAMMER');

insert into DEPT_TEMP
values (70, 'PROGRAMMER', 'BUSAN');

select *
from DEPT_TEMP
order by DEPTNO;

create table emp_temp
as
select *
from EMP
where 1 <> 1; -- 기존 테이블의 구조만 복사 한다.

insert into emp_temp
values (1111, 'HONG', 'CLICK', 2222, '23/05/08', 1000, NULL, 30);

insert into emp_temp
values (1111, 'HONG', 'CLICK', 2222, '23-05-08', 1000, NULL, 30);

insert into emp_temp
values (1111, 'HONG', 'CLICK', 2222, sysdate, 1000, NULL, 30);

insert into emp_temp
select *
from EMP;

insert into emp_temp (ENAME, SAL, DEPTNO)
select ENAME, SAL, DEPTNO
from EMP;

select *
from emp_temp;

drop table emp_temp;

-- insert 서브쿼리문
-- insert into dept_temp
-- values (값1, ...)

-- insert 서브쿼리문
insert into emp_temp
select *
from emp;

delete
from emp_temp;

insert into emp_temp(EMPNO, ENAME, JOB)
select EMPNO, ENAME, JOB
from EMP;

insert into emp_temp
select *
from EMP
where DEPTNO = 10;

-- 급여등급이 1등급인 사원 정보 전체 컬럽 삽입
insert into emp_temp
select *
from EMP
where SAL >= (select LOSAL from SALGRADE where GRADE = 1)
  and SAL <= (select HISAL from SALGRADE where GRADE = 1);

insert into emp_temp
select empno,
       ename,
       job,
       mgr,
       hiredate,
       sal,
       comm,
       deptno
from EMP e
         inner join SALGRADE s
                    on e.SAL between s.LOSAL and s.HISAL
where s.GRADE = 1;

select *
from emp_temp;

-- update
-- update 테이블명
-- set 컬럼명1 = 값, 컬럼명2 = 값, ....
-- [where 조건식]

create table dept_temp2
as
select *
from dept;

update dept_temp2
set LOC = 'SEOUL'
where DEPTNO = 40;

update dept_temp2
set DEPTNO=50,
    LOC   = 'SEOUL'
where DEPTNO = 40;

update dept_temp2
set DNAME = (select DNAME from DEPT where DEPTNO = 10)
where DEPTNO = 40;

update dept_temp2
set (DNAME, LOC) = (select DNAME, LOC from DEPT where DEPTNO = 20)
where DEPTNO = 40;

update dept_temp2
set LOC='SEOUL'
where DEPTNO = (select DEPTNO from DEPT where DEPTNO = 30);

select *
from dept_temp2;

ROLLBACK;

-- delete
-- 레코드 단위로 삭제
-- delete from 테이블명
-- [where 조건식]

create table emp_temp2
as
select *
from EMP;

delete
from emp_temp2;

delete
from emp_temp2
where JOB = 'MANAGER';

delete
from emp_temp2
where DEPTNO = (select DEPTNO from DEPT where DNAME = 'SALES');

-- 서브쿼리를 사용해서 데이터 삭제하기
-- 급여 등급이 3등급이면서 30번 부서에 근무하는 사원 모드를 삭제하세요
delete
from emp_temp2
where DEPTNO = 30
  and SAL >= (select LOSAL from SALGRADE where GRADE = 3)
  and SAL <= (select HISAL from SALGRADE where GRADE = 3);

delete
from emp_temp2
where EMPNO in (select e.EMPNO
                from emp_temp2 e
                         inner join SALGRADE s on e.SAL between s.LOSAL and s.HISAL
                where s.GRADE = 3
                  and e.DEPTNO = 30);

select *
from emp_temp2;

ROLLBACK;

-- TCL : TRANSACTION CONTROL LANGUAGE
-- commit : "변경된 데이터를 데이터베이스에 영구적으로 반영하라"
-- rollback : "변경된 데이터가 문제가 있느니 변경 전 데이터로 복귀하라"
-- savepoint : "데이터 변경을 사전에 지정한 저장점까지만 롤백하라"

-- DML구문을 하나의 작업단위로 묶어주는 역활을 한다.
-- insert, update, delete

create table dept_tcl
as
select *
from DEPT;

insert into dept_tcl
values (50, 'DATABASE', 'SEOUL');

insert into dept_tcl
values (60, 'DATABASE', 'SEOUL');

update dept_tcl
set DNAME = 'PROGRAMMER'
where DEPTNO = 60;

select *
from dept_tcl;

commit;

delete
from dept_tcl
where DEPTNO = 60;

rollback;

-- DDL : 객체  생성, 변경, 삭제
-- create, alter, drop
-- create table 테이블명 (
--     컬럼명1 타입,
--     컬럼명2 타입,
--     컬럼명3 타입,
--     ...
-- );

-- 학생 테이블
-- 이름, 나이, 학년
create table student
(
    sname varchar2(10),
    age   number(3),
    grade number(2)
);

desc student;

-- 문자형(4000자)
-- char(크기 : byte) : 고정형길이
-- varchar2(크기 : byte) : 가변형길이
-----
-- varchar(n): 2000자
-- nvarchar()

-- 숫자형
-- number(크기 : 자릿수)
-- number(전체 크기, 소수자리 크기) : number(8,2)

-- 날짜형
-- date
-- timestamp

-- 기타
-- long : 최대 2G까지 문자
-- clob : 40G까지 문자

-- float()

-- blob : 이진데이터(사진, 동영상)
-- bfile: 이진파일 데이터(사진, 동영상)

-- varchar2(), number(), date
desc emp;

create table emp_copy
(
    empno    number(4),
    ename    varchar2(10),
    job      varchar2(9),
    mgr      number(4),
    hiredate date,
    sal      number(7, 2),
    comm     number(7, 2),
    deptno   number(2)
);

insert into emp_copy
select *
from EMP;

-- 테이블 변경하기(컬럼정보 변경)
-- 추가
alter table emp_copy
    add hp varchar2(10);

-- 변경
-- 컬럼명 변경
alter table emp_copy
    rename column hp to tel;

-- 자료형 수정
alter table emp_copy
    modify tel number(10);

-- 삭제
alter table emp_copy
    drop column tel;;

select *
from emp_copy;

-- 이름 변경
rename emp_copy to emp_alter;

----------

delete
from emp_alter; -- tx가능(rollback)

truncate table emp_alter; -- tx 불가

select *
from emp_alter;

rollback;

drop table EMP_ALTER;

select *
from tab;

select *
from RECYCLEBIN;

flashback table emp_alter to before drop;

purge recyclebin;

-- 제약조건
-- 테이블 생성시 컬럼의 값을 제한하는 역활
-- 5대 제약조건
-- 제약조건의 사용 목적은 데이터의 무결성(정확한 데이터)
-- not null : NULL을 허용하지 않는다
-- unique : 중복된 값을 허용하지 않는다
-- primary : not null + unique
-- check : 데이터의 값의 범위나 조건을 설정하여 조건에 해당되는 데이터만 허용한다.
-- foreign key : 참조한느 테이블 칼럼의 데이터만을 허용한다.
-- 기타 조건
-- default : 암런 데이터를 입력하지 않았을 경우 지정한 데이터가 자동으로 입력된다.

create table table_notnull
(
    login_id varchar2(20) not null,
    login_pw varchar2(20) not null,
    tel      varchar2(20)
);

insert into table_notnull
values ('aaa', '1234', '010');

insert into table_notnull (login_id, login_pw)
values ('bbb', '1234');

insert into table_notnull (login_pw, tel)
values ('1234', 010);

-- 제약조건 확인 SQL구문
select owner, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME
from USER_CONSTRAINTS
where TABLE_NAME = 'TABLE_NOTNULL';

desc USER_CONSTRAINTS;

select *
from table_notnull;

create table table_notnull2
(
    login_id varchar2(20)
        constraint tblnn2_lgnid_nn not null,
    login_pw varchar2(20)
        constraint tblnn2_lgnpw_nn not null,
    tel      varchar2(20)
);

select owner, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME
from USER_CONSTRAINTS
where TABLE_NAME = 'TABLE_NOTNULL2';

-- 제약조건명 수정하기
alter table table_notnull
    rename constraint SYS_C007040 to tblnn_lgnid_nn;

-- not null은 제약조건의 추가가 아닌 변경이다. null -> not null
alter table table_notnull2
    modify (tel not null);

alter table table_notnull2
    modify (tel constraint tlb_tel_nn not null);

-- 제약조건 삭제
alter table table_notnull2
    drop constraint SYS_C007044;

-- unique
-- 중복을 허용하지 않는다.

create table table_unique
(
    login_id varchar2(20)
        constraint tbl_lgnid_uk unique not null,
    login_pw varchar2(20)
        constraint tbl_lgnpw_nn not null,
    tel      varchar2(10)
);

drop table table_unique;

select owner, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME
from USER_CONSTRAINTS
where TABLE_NAME = 'TABLE_UNIQUE';

insert into table_unique
values ('test01', '1111', '010');

insert into table_unique
values ('test01', '2222', '010');

insert into table_unique
values (null, '1111', '010');

insert into table_unique
values (null, '3333', '010');

select *
from table_unique;

select owner, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME
from USER_CONSTRAINTS
where TABLE_NAME = 'TABLE_UNIQUE';

select *
from USER_CONS_COLUMNS
where TABLE_NAME = 'TABLE_UNIQUE';

-- primary key
-- unique + not null
-- 유일값
-- 하나의 컬럼에만 설정 가능하다

create table table_primary
(
    login_id varchar2(20)
        constraint tblpk_lgnid_pk primary key,
    login_pw varchar2(20)
        constraint tblpk_lgnpw_nn not null,
    tel      varchar2(20)
);

drop table table_primary;

select owner, CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME
from USER_CONSTRAINTS
where TABLE_NAME = 'TABLE_PRIMARY';

insert into table_primary
values ('test01', '1111', '010');

insert into table_primary
values ('test01', '1111', '010');

insert into table_primary
values (null, '1111', '010');

select *
from table_primary;

-- check
-- 값의 범위를 제한 한다.
create table table_check
(
    login_id varchar2(20)
        constraint tablck_lgnid_pk primary key,
    login_pw varchar2(20)
        constraint tblck_lgnpw_ck check (length(login_pw) > 3),
    tel      varchar2(20)
);

insert into table_check
values ('aaa', '1111', '010');

insert into table_check
values ('bbb', '2', '010');

select *
from table_check;

-- not null - c
-- unique - u
-- primary key - p
-- check - c
-- foreign key - r

-- foreign key
-- 두개의 테이블을 사용해서 제약조건 설정
-- emp, dept 관계는 소속
-- 부모쪽 테이블의 값을 참조해서 자식쪽 데이터를 삽입할지 말지 결정한다.
-- foreign key == reference
-- 부모쪽 컬럼은 반드시 primary key or unique 이여야 한다.
-- 자식쪽 컬럼에 제약조건을 설정한다.

insert into EMP
values (1111, 'aaa', 'bbb', '2222', sysdate, 100, 0, 50);

-- 직접 컬럼을 정의 하는 방법
-- 서브쿼리를 사용하는 방법 (제약조건은 복사가 안된다)

drop table emp_copy;

create table emp_copy
as
select *
from EMP;

create table dept_fk
(
    deptno number(2)
        constraint dept_fk_deptno_pk primary key,
    dname  varchar2(20)
        constraint dept_fk_dname_nn not null,
    loc    varchar2(20)
);

create table emp_fk
(
    empno    number(4)
        constraint emp_fk_empno_pk primary key,
    ename    varchar2(20),
    job      varchar2(20),
    mgr      number(4),
    hiredate date,
    sal      number(4),
    comm     number(4),
    deptno   number(2)
        constraint emp_fk_deptno_fk references dept_fk (deptno)
);

insert into DEPT_FK
select *
from DEPT;

select *
from dept_fk;

insert into emp_fk
values (1111, 'aaa', 'bbb', 2222, sysdate, 100, 0, 10);

insert into emp_fk
values (2222, 'aaa', 'bbb', 2222, sysdate, 100, 0, 20);

delete
from emp_fk
where empno = 2222;

delete
from dept_fk
where deptno = 10;

alter table dept_fk
    disable primary key cascade;

rollback;

alter table dept_fk
    enable primary key cascade; -- 활성 안 됨
alter table dept_fk
    enable constraint dept_fk_deptno_pk;

alter table emp_fk
    enable constraint emp_fk_deptno_fk;

select *
from dept_fk;
select *
from emp_fk;

-- 제약 조건을 지정하는 3가지 방법
-- 컬럼 레벨
-- 테이블 레벨
-- alter 명령어

-- 테이블 레벨
-- not null한 제약조건은 불가하다.
-- 두 개 이상의 컬럼에 primary key 제약조건 설정이 가능하다.(복합키)
create table emp_level
(
    empno  number(10),
    ename  varchar2(10)
        constraint emp_level_nn not null,
    deptno number(20),
    constraint emp_level_empno_pk primary key (empno, ename),
    constraint emp_level_deptno_fk foreign key (deptno) references dept (deptno)
);

-- alter 명령어
create table emp_level2
(
    empno  number(10),
    ename  varchar2(10),
    deptno number(20)
);

alter table emp_level2
    add constraint emp_level2_pk primary key (empno);

alter table emp_level2
    modify ename constraint emp_level2_ename_nn not null;

alter table emp_level2
    add foreign key (deptno) references dept (DEPTNO);

create table DEPT_CONST
(
    DEPTNO number(2)
);

alter table DEPT_CONST
    add DNAME varchar2(14);

alter table DEPT_CONST
    add LOC varchar2(13);

alter table DEPT_CONST
    add constraint DEPTCONST_DEPTNO_PK primary key (DEPTNO);

alter table DEPT_CONST
    add constraint DEPTCONST_DNAME_UNQ unique (DNAME);

alter table DEPT_CONST
    modify LOC constraint DEPTCONST_LOC_NN not null;

create table EMP_CONST
(
    EMPNO    number(4),
    ENAME    varchar2(10),
    JOB      varchar2(9),
    TEL      varchar2(20),
    HIREDATE date,
    SAL      number(7, 2),
    COMM     number(7, 2),
    DEPTNO   number(2)
);

alter table EMP_CONST
    add constraint EMPCONST_EMPNO_PK primary key (EMPNO);
alter table EMP_CONST
    modify ENAME constraint EMPCONST_ENAME_NN NOT NULL;
alter table EMP_CONST
    add constraint EMPCONST_TEL_UNQ unique (TEL);
alter table EMP_CONST
    add constraint EMPCONST_SAL_CHK check ( SAL >= 1000 AND SAL <= 9999 );
alter table EMP_CONST
    add constraint EMPCONST_DEPTNO_FK foreign key (DEPTNO) references DEPT (DEPTNO);

-- 데이터 시전
-- 객체 정보를 저장하는 테이블
-- table, index, ...
-- user_constraints
-- 관리자 사전
-- 내가 사용하는 사전
-- 모두 사용하는 사전
select *
from tab;

select *
from DICT
where TABLE_NAME like 'USER%';

select *
from USER_TABLES;

select *
from ALL_TABLES;

select 12 * 14
from DUAL;

-- index
-- 검색속도를 높여주는 역활
-- 전체데이터의 3 ~ 5%
-- primary key를 적용하면 기본으로 생성
-- 테이블의 특정 컬럼에 생성한다.
create table emp_sal
as
select *
from EMP;

insert into emp_sal
select *
from emp_sal;

select *
from emp_sal;

select *
from emp_sal
where SAL >= 3000;

create index emp_sal_index
    on emp_sal (SAL);

drop index emp_sal_index;

-- view
-- 가상테이블
-- 원복테이블(실제 테이블)로부터 정보를 보기 위한 용도로 사용한다.
-- with check option
-- with read only
-- DML이 가능하다.

create or replace view emp_dept30
as
select *
from emp_copy
where DEPTNO = 30;

select *
from emp_dept30;

insert into emp_dept30(empno, ename, deptno)
values (1111, 'aaa', 30);

select *
from USER_VIEWS;

delete
from emp_dept30
where empno = 1111;

update emp_dept30
set job='SALES'
where ENAME = 'WARD';

select *
from emp_copy;

select *
from USER_VIEWS
where VIEW_NAME like 'EMP_DEPT%';

create or replace view emp_dept_salgrade
as
select empno, ename, dname, sal, grade
from emp e
         inner join dept d
                    on e.deptno = d.deptno
         inner join salgrade s
                    on e.sal between s.losal and s.hisal;

create or replace view emp_dept30
as
select *
from emp_copy
where DEPTNO = 30
with read only;

select *
from emp_dept30;

delete
from emp_dept30;

drop view emp_dept30;

-- 뷰를 활용한 top-n 데이터 조회하기
select ROWNUM, EMPNO, ENAME, HIREDATE, DEPTNO
from EMP
where ROWNUM <= 5
order by HIREDATE;

create or replace view emp_hiredate
as
select *
from EMP
order by HIREDATE;

select ROWNUM, EMPNO, ENAME, HIREDATE
from emp_hiredate
where ROWNUM <= 3;

-- 인라뷰(일회성)
select ROWNUM, eh.*
from (select * from EMP order by HIREDATE) eh
where ROWNUM <= 5;

-----------------
-- rownum 조건절에 사용되면 반드시 1 이라느 값을 포함하도록 작성해야 한다.
select ROWNUM, eh.*
from (select * from EMP order by HIREDATE) eh
where ROWNUM >= 2
  and ROWNUM <= 4;

select rm, EMPNO, ENAME, SAL, HIREDATE
from (select rownum rm, e1.*
      from (select *
            from EMP
            order by HIREDATE) e1) e2
where rm >= 6
  and rm <= 9;

drop table
    dept_fk;

-- 시퀀스 객체
--자동으로 번호를 증가시켜주는 역활
-- 테이블의 특정 컬럼(primary key)에 값으로 사용한다.
create sequence dept_seq
    increment by 10 -- 증감값
    start with 10;
-- 시작값
-- maxvalue
-- minvalue

-- 기타
-- cycle
-- cache

drop sequence dept_seq;

select dept_seq.nextval
from DUAL;

select dept_seq.currval
from DUAL;

create table dept_sequence
as
select *
from dept
where 1 <> 1;

select *
from dept_sequence;

insert into dept_sequence
values (dept_seq.nextval, 'SALES', 'SEOUL');

insert into dept_sequence
values (dept_seq.nextval, 'ACCOUNTING', 'BUSAN');

select *
from dept_sequence;

delete
from dept_sequence
where DEPTNO = 20;

create table emp_seq
as
select empno, ename, deptno
from EMP
where 1 <> 1;

drop table emp_seq;

-- insa00001
-- insa00002

alter table emp_seq
    modify empno varchar2(12);

desc emp_seq;

create sequence insa_seq
    increment by 1
    start with 1;

insert into emp_seq
values ('insa0000' || insa_seq.nextval, '홍길동', 10);

insert into emp_seq
values ('insa0000' || insa_seq.nextval, '이순신', 20);

select *
from emp_seq;

-- 시퀀스 수정
-- 시작값은 수정 불가

-- 시노늄 객체(동의어)
-- create synonym  시노늄명
-- for 계정명.테이블이름
-- 공개 동의어
-- 비공개 동의어

create synonym E
    for EMP;

drop synonym E;

select *
from EMP;
select *
from E;

create table EMPIDX
as
select *
from EMP;

drop table EMPIDX;

create index IDX_EMPINDEX_EMPNO
    on EMPIDX (EMPNO);

SELECT *
FROM USER_INDEXES
WHERE INDEX_NAME = 'IDX_EMPINDEX_EMPNO';

create or replace view EMPIDX_OVER15K
as
select EMPNO, ENAME, JOB, DEPTNO, SAL, nvl2(COMM, 'O', 'X') as COMM
from EMPIDX
where SAL > 1500;

select *
from EMPIDX_OVER15K;

create table DEPTSEQ as
select *
from DEPT;

create sequence DEPTSEQ_SEQ
    increment by 1
    start with 1
    maxvalue 99
    minvalue 1;

insert into DEPTSEQ
values (DEPTSEQ_SEQ.nextval, 'DATABASE', 'SEOUL');
insert into DEPTSEQ
values (DEPTSEQ_SEQ.nextval, 'WEB', 'SEOUL');
insert into DEPTSEQ
values (DEPTSEQ_SEQ.nextval, 'MOBILE', 'SEOUL');

select *
from DEPTSEQ;

