SELECT
    *
FROM
    tab;

DESC BONUS;

DESC DEPT;

DESC EMP;

DESC SALGRADE;

-- Structured Query Language : SQL
-- Data Query Language : DQL(데이터 조회)

-- select 컬럼명1, 컬럼명2, .....컬럼명n -- 컬럼명은 필요한 만큼만 작성한다.
-- from 테이블명;

SELECT
    deptno,
    dname,
    loc
FROM
    dept;

SELECT
    *
FROM
    dept;

SELECT
    dname,
    loc
FROM
    dept;

SELECT
    *
FROM
    emp;

-- 중복데이터 한번만 검색하기
SELECT
    job
FROM
    emp;

SELECT DISTINCT
    ( job )
FROM
    emp;

-- 컬럼을 사용한 데이터 연산
SELECT
    *
FROM
    emp;

-- +, -, *, /
SELECT
    ename,
    sal,
    sal * 12
FROM
    emp;

-- 컬럼명에 별칭사용하기 (as는 생략 가능)
SELECT
    ename    AS 사원명,
    sal      AS 급여,
    sal * 12 AS 연봉
FROM
    emp;

-- 조회시 값의 정렬(내림, 오름)
-- asc 는 기본값이다. (생략가능하다)
-- 가장 마지막에 작성한다.
SELECT
    *
FROM
    emp
ORDER BY
    sal DESC;

-- asc(오름) / desc(내림)

SELECT
    *
FROM
    emp
ORDER BY
    sal ASC,
    ename DESC;

-- 첫번째는 전체데이터를 정렬하고, 두번재는 같은 겂을 그룹으로 묶어서 정렬한다.

-- 조건절
-- where 조건식(컬럼명 = 값) --> 참 / 거짓
-- <, >, <=, >=, =, !=, or <>
SELECT
    *
FROM
    emp
WHERE
    sal = 800;

SELECT
    *
FROM
    emp
WHERE
    sal >= 3000;

SELECT
    *
FROM
    emp
WHERE
    deptno = 10;

-- 문자를 조건절에 사용할 때
-- 조건절에서의 문자는 대소문자를 구분한다.
-- 문자를 반드시 '' 로 묶어주어야 한다. ("" 안됩니다.)
SELECT
    *
FROM
    emp
WHERE
    ename = 'SMITH';

-- 날짜를 조건절에 사용할 떄
-- 크기 비교가 가능하다
-- ''로 묶어준다.
-- 80/09/30 // 년월일시분초 표준시 2023/05/01 12:30:22 GTM 9
SELECT
    *
FROM
    emp
WHERE
    hiredate = '80/12/17';

-- 1980/12/17

-- 논리연산자
-- and, or, not
SELECT
    *
FROM
    emp
WHERE
        deptno = 10
    AND sal >= 2000;

SELECT
    *
FROM
    emp
WHERE
        sal >= 1000
    AND sal <= 3000;

SELECT
    *
FROM
    emp
WHERE
        sal >= 1000
    AND sal <= 3000
    AND deptno = 10;

SELECT
    *
FROM
    emp
WHERE
    deptno = 10
    OR sal >= 2000;

SELECT
    *
FROM
    emp
WHERE
    sal < 1000
    OR sal > 3000
ORDER BY
    sal DESC;

SELECT
    *
FROM
    emp
WHERE
    NOT sal <= 3000;

-- 논리연산자의 다른 표현
-- and
SELECT
    *
FROM
    emp
WHERE
    sal BETWEEN 1000 AND 2000;

-- sal >= 1000 and sal <= 2000

SELECT
    *
FROM
    emp
WHERE
    sal IN ( 800, 950, 5000 );

-- sal = 800 or sal = 950 or sal = 5000

SELECT
    *
FROM
    emp
WHERE
    sal NOT IN ( 800, 950, 5000 );

-- Like연산자
-- %, _ (와이드카드)
-- %는 나머지 문자 전체를 대신한다(선택)
-- _한문자를 대신한다(필수) _ _ _, __A, A____
-- where 컬럼명 like 값
SELECT
    *
FROM
    emp
WHERE
    ename = 'F';

SELECT
    *
FROM
    emp
WHERE
    ename LIKE 'F%';

SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%A%';

SELECT
    *
FROM
    emp
WHERE
    ename LIKE 'A____';

SELECT
    *
FROM
    emp
WHERE
    ename LIKE '_A%';

SELECT
    *
FROM
    emp
WHERE
    comm = NULL;

-- null데이터는 연산자 사용이 불가하다.

-- is null
-- is not null
SELECT
    *
FROM
    emp
WHERE
    comm IS NULL;

SELECT
    *
FROM
    emp
WHERE
    comm IS NOT NULL;

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
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10
UNION
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 30;

-- 교집합
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10
INTERSECT
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10;

SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 10
MINUS
SELECT
    empno,
    ename,
    sal,
    deptno
FROM
    emp
WHERE
    deptno = 30;

-- 문제 시작
SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%S';

SELECT
    empno,
    ename,
    job,
    sal,
    deptno
FROM
    emp
WHERE
    job = 'SALESMAN';

SELECT
    empno,
    ename,
    job,
    sal,
    deptno
FROM
    emp
WHERE
        sal > 2000
    AND deptno IN ( 20, 30 );

SELECT
    empno,
    ename,
    job,
    sal,
    deptno
FROM
    emp
WHERE
        sal > 2000
    AND deptno = 20
UNION
SELECT
    empno,
    ename,
    job,
    sal,
    deptno
FROM
    emp
WHERE
        sal > 2000
    AND deptno = 30;

SELECT
    *
FROM
    emp
WHERE
    sal < 2000
    OR sal > 3000;

SELECT
    ename,
    empno,
    sal,
    deptno
FROM
    emp
WHERE
    ename LIKE '%E%'
    AND deptno = 30
    AND sal NOT BETWEEN 1000 AND 2000;

SELECT
    *
FROM
    emp
WHERE
    comm IS NULL
    AND mgr IS NOT NULL
    AND job IN ( 'MANAGER', 'CLERK' )
    AND NOT ename LIKE '_L%';

-- 문제 끝

-- 함수
-- 문자함수,숫자함수,날짜함수
-- 형변환 함수
-- 사용자 정의 함수
-- 문자함수
-- upper(), lower(), initcap()
SELECT
    *
FROM
    emp;

SELECT
    lower(ename),
    initcap(ename)
FROM
    emp;

SELECT
    *
FROM
    emp
WHERE
    lower(ename) = 'smith';

-- length() : 문자열의 길이확인
SELECT
    ename,
    length(ename),
    length('홍길동')
FROM
    emp
WHERE
    length(ename) > 5;

-- 문자열 추출하기
-- substr(문자열, 시작위치, 문자의 길이)  // 시작위치값은 1부터 시작
-- substr(문자열, 시작위치)
-- 'abcdefg'   'abcdefg'
--  1234567    -7-6-5-4-3-2-1
SELECT
    job,
    substr(job, 1, 2),
    substr(job, 5)
FROM
    emp;

SELECT
    job,
    substr(job,
           - length(job)),
    substr(job,
           - length(job),
           2)
FROM
    emp;

-- instr() : 특정 문자위치 찾기
-- 문자를 못찾으면 0 이 반환된다.
SELECT
    instr('HELLO, ORACLE', 'L'),
    instr('HELLO, ORACLE', 'L', 5),
    instr('HELLO, ORACLE', 'L', 2, 3)
FROM
    dual;

SELECT
    ename
FROM
    emp
WHERE
    instr(ename, 'S') > 0;

--where ename like '%S%';
-- replace()
SELECT
    '010-1234-5678' AS replace_before,
    replace('010-1234-5678', '-', ' '),
    replace('010-1234-5678', '-')
FROM
    dual;

-- lpad(), rpad()
SELECT
    'Oracle',
    lpad('Oracle', 10, '#'),
    rpad('Oracle', 10, '#')
FROM
    dual;

-- concat()
SELECT
    concat(empno, ename),
    job
FROM
    emp;

SELECT
    empno
    || ''
    || ename,
    job
FROM
    emp;

-- 입사연도
SELECT
    *
FROM
    emp
WHERE
    hiredate BETWEEN '1980/01/01' AND '1981/12/31';

SELECT
    *
FROM
    emp
WHERE
    ename LIKE '%E';

SELECT
    *
FROM
    emp
WHERE
    ename LIKE '__R%';

-- substr()
SELECT
    *
FROM
    emp
WHERE
    substr(ename, 3, 1) = 'R';

-- instr()
SELECT
    *
FROM
    emp
WHERE
    instr(ename, 'R', 3, 1) = 3;

SELECT
    *
FROM
    emp
WHERE
    substr(hiredate, 1, 2) = '80'
    OR substr(hiredate, 1, 2) = '81';

SELECT
    *
FROM
    emp
WHERE
    substr(ename, - 1, 1) = 'E';

-- 숫자함수
-- round(), trunc(), ceil(), floor(), mod()
SELECT
    1234.5678 AS num,
    round(1234.5678),
    round(1234.5678, 2),
    round(1234.5678, - 1)
FROM
    dual;

SELECT
    1234.5678 AS num,
    trunc(1234.5678),
    trunc(1234.5678, 2),
    trunc(1234.5678, - 2)
FROM
    dual;

SELECT
    1234.5678 AS num,
    ceil(1234.5678),
    floor(1234.5678)
FROM
    dual;

SELECT
    mod(13, 2),
    mod(20, 5)
FROM
    dual;

-- 날짜 함수
-- +, -
-- add_months(), months_between(), next_day(), last_day()
-- round(), trunc()
SELECT
    sysdate - 1 AS yesterday,
    sysdate     AS today,
    sysdate + 1 AS tomorrow
FROM
    dual;

DESC EMP;

SELECT
    sysdate - hiredate                AS 근속일수,
    round((sysdate - hiredate) / 365) AS 근속연수
FROM
    emp;

SELECT
    hiredate,
    add_months(hiredate, 3)
FROM
    emp;

-- cc, yyyy, q, month, hh
SELECT
    sysdate,
    round(sysdate, 'month'),
    round(sysdate, 'yyyy')
FROM
    dual;

-- 숫자 날짜 문자를 형변환
-- to_char(), to_number(), to_date()
-- 날짜 -> 문자
-- cc, yyyy, mm, dd, dy, w, hh, hh12, mi, ss
SELECT
    sysdate,
    to_char(sysdate, 'yyyy-mm-dd'),
    to_char(sysdate, 'mm')
FROM
    dual;

SELECT
    sysdate,
    to_char(sysdate, 'hh:mi:ss dy')
FROM
    dual;

-- 숫자 -> 문자
SELECT
    to_char(1234, 'L999,999'),
    to_char(1234, '000,000')
FROM
    dual;

SELECT
    sal,
    to_char(sal, 'L999,999')
FROM
    emp;

-- 문자 -> 숫자
-- 묵시적(암시적) 형변환
-- 강제형변환 : to_number()
SELECT
    1300 - '1500',
    '1300' + '1500' -- 묵시적 형변환
FROM
    dual;

SELECT
    TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999')
FROM
    dual;

-- 문자 -> 날짜
-- '2023-05-02', '20230502'
SELECT
    TO_DATE('2023-05-02', 'yyyy-mm-dd'),
    TO_DATE('20230502', 'yyyy-mm-dd')
FROM
    dual;

SELECT
    *
FROM
    emp
WHERE
    hiredate >= TO_DATE(19800101, 'yyyy-mm-dd');

-- 예외적으로 숫자 -> 날짜

-- 기타함수
-- nvl(null,바꾸고싶은 값)
-- null 데이터를 원하는 값으로 변경하는 함수
-- nvl(a, b) a와 b의 타입이 일치해야한다.
SELECT
    ename,
    sal,
    sal * 12                AS ann,
    comm,
    sal * 12 + nvl(comm, 0) AS realann
FROM
    emp;

-- nvl2(a, b, c)
-- nvl2(null, null이 아닌 경우의 값, null인 경우의 값)

SELECT
    ename,
    comm,
    nvl2(comm, 'o', 'x')
FROM
    emp;

-- decode() => switch()
-- case => if()

-- decode(비교대상값,
--            값1,결과1,
--            값2,결과2,
--            값3,결과3
--            ,값)  defalut와 같다.
SELECT
    deptno,
    decode(deptno, 10, 'ACCOUNTING', 20, 'RESEARCH',
           30, 'SALES', 40, 'OPERATIONS', 'etc') AS dname
FROM
    emp;

-- case
--case
--    when 조건식  then 결과
--    when 조건식  then 결과
--    when 조건식  then 결과
--    else
--end as 'xxx'
SELECT
    ename,
    comm,
    CASE
        WHEN comm IS NULL THEN
            '수당이 없는 사원'
        WHEN comm = 0 THEN
            '수당을 못 받은 사원'
        WHEN comm > 0 THEN
            '수당은 $' || comm
        ELSE
            '미확인'
    END AS commition
FROM
    emp;

-- 사원테이블에 매니져 null인 사원이 있다.
-- null -> CEO
SELECT
    ename,
    nvl(to_char(mgr, '9999'),
        'CEO') AS mgr
FROM
    emp
WHERE
    mgr IS NULL;

-- 문제 시작
SELECT
    empno,
    substr(empno, 1, 2)
    || '**'   AS masking_empno,
    ename,
    rpad(substr(ename, 1, 1),
         length(ename),
         '*') AS masking_ename
FROM
    emp
WHERE
        length(ename) >= 5
    AND length(ename) < 6;

SELECT
    empno,
    ename,
    sal,
    trunc(sal / 21.5, 2),
    round(sal /(21.5 * 8), 1)
FROM
    emp;

SELECT
    *
FROM
    emp;

SELECT
    empno,
    ename,
    mgr,
    CASE
        WHEN mgr IS NULL THEN
            '0000'
        WHEN substr(mgr, 1, 2) = '75' THEN
            '5555'
        WHEN substr(mgr, 1, 2) = '76' THEN
            '6666'
        WHEN substr(mgr, 1, 2) = '77' THEN
            '7777'
        WHEN substr(mgr, 1, 2) = '78' THEN
            '8888'
        ELSE
            to_char(mgr)
    END AS chg_mgr
FROM
    emp;

-- 문제 끝

-- 그룹함수
-- 단일행 함수, 다중행 함수
-- sum(), avg(), max(), min(), count()
SELECT
    SUM(sal) AS 급여합계
FROM
    emp;

-- select ENAME, max(SAL)
-- from EMP;

SELECT
    COUNT(comm)
FROM
    emp;

SELECT
    COUNT(*)
FROM
    emp;

SELECT
    COUNT(DISTINCT job)
FROM
    emp;

SELECT
    COUNT(*),
    COUNT(comm)
FROM
    emp;

SELECT
    MIN(sal)
FROM
    emp;

SELECT
    AVG(sal)
FROM
    emp;

SELECT
    MAX(sal)
FROM
    emp
WHERE
    deptno = 20;

SELECT
    SUM(sal),
    SUM(DISTINCT sal)
FROM
    emp;

-- group by
-- select
-- from
-- where
-- group by
-- having -- group by를 위한 조건절
-- order by -- 마지막에 작성한다.
SELECT
    AVG(sal)
FROM
    emp
WHERE
    deptno = 10
UNION
SELECT
    AVG(sal)
FROM
    emp
WHERE
    deptno = 20
UNION
SELECT
    AVG(sal)
FROM
    emp
WHERE
    deptno = 30;

SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
GROUP BY
    deptno,
    job
ORDER BY
    deptno;

SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
-- where avg(SAL) >= 2000 -- 일반조건절에서는 그룹함수 사용불가
GROUP BY
    deptno,
    job
HAVING
    AVG(sal) >= 2000 -- 조건절을 구성시 그룹함수를 사용한다.
ORDER BY
    deptno;

-- where과 having 함께 사용하는 순서
-- where -> group by -> having을 실행한다.
SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
WHERE
    sal <= 3000
GROUP BY
    deptno,
    job
HAVING
    AVG(sal) >= 2000
ORDER BY
    deptno,
    job;

SELECT
    deptno,
    job,
    sal
FROM
    emp
WHERE
    sal <= 2000
ORDER BY
    deptno,
    job;

-- 그룹화 관련 함수
-- rollup(), cube(), grouping_sets()
-- 그룹화된 데이터의 결과를 이용해서 합계를 출력한다
SELECT
    deptno,
    job,
    COUNT(*),
    MAX(sal),
    MIN(sal),
    AVG(sal)
FROM
    emp
GROUP BY
    ROLLUP(deptno,
           job) -- (a, b) : a, b -> a -> 전체결과
ORDER BY
    deptno,
    job;

SELECT
    deptno,
    job,
    COUNT(*),
    MAX(sal),
    MIN(sal),
    AVG(sal)
FROM
    emp
GROUP BY
    CUBE(deptno,
         job) -- (a, b, c) : a, b -> b, c -> a, c -> a -> b -> c -> 전체결과
ORDER BY
    deptno,
    job;

-- 가장 입사일이 빠른 사람 조회하기
SELECT
    MIN(hiredate)
FROM
    emp;

-- 부서별로 가장 입사일이 빠른 사람 조회하기
-- 부서 인원이 3명 이상인 부서만 조회하기
SELECT
    deptno,
    MIN(hiredate),
    COUNT(*)
FROM
    emp
GROUP BY
    deptno
HAVING
    COUNT(*) >= 4;

SELECT
    deptno,
    job,
    AVG(sal)
FROM
    emp
WHERE
    sal >= 2000
GROUP BY
    deptno,
    job
HAVING
    deptno = 10;

SELECT
    deptno,
    trunc(AVG(sal)) AS avg_sal,
    MAX(sal)        AS max_sal,
    MIN(sal)        AS min_sal,
    COUNT(*)        AS cnt
FROM
    emp
GROUP BY
    deptno;

SELECT
    job,
    COUNT(*)
FROM
    emp
GROUP BY
    job
HAVING
    COUNT(*) >= 3;

SELECT
    EXTRACT(YEAR FROM hiredate) AS hire_year,
    deptno,
    COUNT(*)                    AS cnt
FROM
    emp
GROUP BY
    EXTRACT(YEAR FROM hiredate),
    deptno
ORDER BY
    EXTRACT(YEAR FROM hiredate);

SELECT
    nvl2(comm, 'O', 'X') AS exist_comm,
    COUNT(*)             AS cnt
FROM
    emp
GROUP BY
    nvl2(comm, 'O', 'X')
ORDER BY
    nvl2(comm, 'O', 'X') DESC;

SELECT
    deptno,
    EXTRACT(YEAR FROM hiredate),
    COUNT(*),
    MAX(sal),
    SUM(sal),
    AVG(sal)
FROM
    emp
GROUP BY
    ROLLUP(deptno,
           EXTRACT(YEAR FROM hiredate));

-- ERD(Entity Relationship Diagram)
-- SQL(ORACLE, MYSQL), NON-SQL(MOGODB)
-- SMITH
SELECT
    ename,
    deptno
FROM
    emp
WHERE
    ename = 'SMITH';

SELECT
    deptno,
    dname
FROM
    dept
WHERE
    deptno = 20;

-- cross join
-- 12 * 4 = 48
SELECT
    ename,
    dname
FROM
    emp,
    dept;

-- equl join
SELECT
    ename,
    emp.deptno,
    dname
FROM
    emp,
    dept
WHERE
    emp.deptno = dept.deptno;

-- 테이블 이름 별칭
SELECT
    ename,
    e.deptno,
    dname
FROM
    emp  e,
    dept d
WHERE
    e.deptno = d.deptno;

-- 조인구문에서 일반조건 추가하기
SELECT
    e.ename,
    e.deptno,
    d.dname,
    sal
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND sal >= 3000;

-- non equal join
-- 값의 범위로 조인하는 방식
SELECT
    ename,
    sal,
    grade
FROM
    emp,
    salgrade
WHERE
    sal BETWEEN losal AND hisal;

SELECT
    ename,
    e.deptno,
    dname,
    grade
FROM
    emp      e,
    dept     d,
    salgrade s
WHERE
        e.deptno = d.deptno
    AND sal BETWEEN losal AND hisal;

-- self join
SELECT
    e1.ename
    || '의 매니저의 이름은 '
    || e2.ename
    || '입니다.'
FROM
    emp e1,
    emp e2
WHERE
    e1.mgr = e2.empno
ORDER BY
    e1.empno;

-- outer join
-- 조인시 누락되는 레코드를 함께 조회가 되도록 하는 방식
-- (+) : 조인 조건절의 컬럼 뒤에 표시한다.
-- 값이 없는 쪽 컬럼 뒤에 붙인다.
SELECT
    e1.ename
    || '의 매니저의 이름은 '
    || e2.ename
    || '입니다.'
FROM
    emp e1,
    emp e2
WHERE
    e1.mgr = e2.empno (+)
ORDER BY
    e1.empno;

SELECT
    ename,
    dept.deptno,
    dname,
    loc
FROM
    emp,
    dept
WHERE
    emp.deptno (+) = dept.deptno;

-- cross join
-- equi join
-- non equi join
-- self join
-- outer join
-- 표준조인(ANSI-JOIN)
SELECT
    *
FROM
         emp
    CROSS JOIN dept;

SELECT
    ename,
    e.deptno,
    sal,
    dname,
    loc
FROM
         emp e
    INNER JOIN dept d ON e.deptno = d.deptno;

SELECT
    ename,
    e.deptno,
    sal,
    dname,
    loc
FROM
         emp e
    INNER JOIN dept d ON e.deptno = d.deptno
WHERE
    ename = 'FORD';

-- 컬럼에 이름이 동일할 경우에 사용
SELECT
    ename,
    deptno,
    sal,
    dname,
    loc
FROM
         emp
    INNER JOIN dept USING ( deptno );

-- natural join시 공통컬럼에는 테이블 이름을 적어주지 않는다.
SELECT
    ename,
    deptno,
    sal,
    dname,
    loc
FROM
         emp
    NATURAL JOIN dept;

SELECT
    ename,
    sal,
    grade
FROM
         emp e
    INNER JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;

SELECT
    e1.ename
    || '의 매니저의 이름은 '
    || e2.ename
    || '입니다.'
FROM
         emp e1
    INNER JOIN emp e2 ON e1.mgr = e2.empno
ORDER BY
    e1.empno;

-- ANSI JOIN(표준 조인)
-- CROSS JOIN
-- INNER JOIN
-- OUTER JOIN [ left || right || full ] outer join
SELECT
    e1.ename,
    e2.ename
FROM
    emp e1
    LEFT OUTER JOIN emp e2 ON e1.mgr = e2.empno;

SELECT
    e1.ename,
    e2.ename
FROM
    emp e1
    FULL OUTER JOIN emp e2 ON e1.mgr = e2.empno
ORDER BY
    e1.ename;

SELECT
    ename,
    sal,
    dname,
    grade
FROM
         emp e
    INNER JOIN dept     d ON e.deptno = d.deptno
    INNER JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal;

-- 문제 시작
SELECT
    e.deptno,
    dname,
    empno,
    sal
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND sal > 2000;

SELECT
    e.deptno,
    dname,
    empno,
    sal
FROM
         emp e
    INNER JOIN dept d ON e.deptno = d.deptno
WHERE
    sal > 2000;
----------------------------------------------
SELECT
    e.deptno,
    dname,
    trunc(AVG(sal)) AS avg_sal,
    MAX(sal)        AS max_sal,
    MIN(sal)        AS min_sal,
    COUNT(*)        AS cnt
FROM
    emp  e,
    dept d
WHERE
    e.deptno = d.deptno
GROUP BY
    e.deptno,
    dname;

SELECT
    e.deptno,
    dname,
    trunc(AVG(sal)) AS avg_sal,
    MAX(sal)        AS max_sal,
    MIN(sal)        AS min_sal,
    COUNT(*)        AS cnt
FROM
         emp e
    INNER JOIN dept d ON e.deptno = d.deptno
GROUP BY
    e.deptno,
    dname;
----------------------------------------------
SELECT
    d.deptno,
    dname,
    empno,
    ename,
    job,
    sal
FROM
    emp  e,
    dept d
WHERE
    e.deptno (+) = d.deptno
ORDER BY
    deptno,
    ename;

SELECT
    deptno,
    dname,
    empno,
    ename,
    job,
    sal
FROM
    emp  e
    RIGHT OUTER JOIN dept d USING ( deptno )
ORDER BY
    deptno,
    ename;
----------------------------------------------
SELECT
    d.deptno  AS deptno,
    dname,
    e1.empno  AS empno,
    e1.ename  AS ename,
    e1.mgr    AS mgr,
    e1.sal    AS sal,
    e1.deptno AS deptno_1,
    losal,
    hisal,
    grade,
    e2.empno  AS mgr_enpno,
    e2.ename  AS mgr_ename
FROM
    emp      e1,
    dept     d,
    salgrade s,
    emp      e2
WHERE
        e1.deptno (+) = d.deptno
    AND e1.sal BETWEEN s.losal (+) AND s.hisal (+)
    AND e1.mgr = e2.empno (+)
ORDER BY
    d.deptno,
    e1.empno;

SELECT
    d.deptno  AS deptno,
    dname,
    e1.empno  AS empno,
    e1.ename  AS ename,
    e1.mgr    AS mgr,
    e1.sal    AS sal,
    e1.deptno AS deptno_1,
    losal,
    hisal,
    grade,
    e2.empno  AS mgr_enpno,
    e2.ename  AS mgr_ename
FROM
    emp      e1
    RIGHT OUTER JOIN dept     d ON e1.deptno = d.deptno
    LEFT OUTER JOIN salgrade s ON e1.sal BETWEEN s.losal AND s.hisal
    LEFT OUTER JOIN emp      e2 ON e1.mgr = e2.empno
ORDER BY
    d.deptno,
    e1.empno;
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

SELECT
    ename,
    dname
FROM
    emp,
    dept
WHERE
        emp.deptno = dept.deptno
    AND ename = 'SMITH';

SELECT
    dname
FROM
    dept
WHERE
    deptno = (
        SELECT
            deptno
        FROM
            emp
        WHERE
            ename = 'SMITH'
    );

SELECT
    MAX(sal)
FROM
    emp;

SELECT
    ename,
    sal
FROM
    emp
WHERE
    sal = (
        SELECT
            MAX(sal)
        FROM
            emp
    );

-- 이름, 급여, 부서번호, 부서명
-- 부서번호가 20번
-- 전체사원의 급여의 평균을 초과하는 사원
SELECT
    ename,
    sal,
    emp.deptno,
    dname
FROM
         emp
    INNER JOIN dept ON emp.deptno = dept.deptno
                       AND emp.deptno = 20
                       AND sal > (
        SELECT
            AVG(sal)
        FROM
            emp
    );

-- 서브쿼리문의 결과의 갯수
-- 단일행 서브쿼리
-- 다중행 서브쿼리

-- 작성위치
-- where : 서브쿼리
-- from : 인라인 뷰
-- select : 컬럼형식
SELECT
    ename,
    deptno,
    (
        SELECT
            dname
        FROM
            dept
        WHERE
            deptno = e.deptno
    ) AS dname
FROM
    emp e
WHERE
    ename = 'SMITH';

-- 다중행 서브쿼리문
-- 비교연산자 사용불과
-- in(), all(), any(), some(), exits()
-- select
-- from
-- where SAL 연산자 (
--             select
--             from
-- );

SELECT
    *
FROM
    emp
WHERE
    deptno IN ( 20, 30 );

SELECT
    *
FROM
    emp
WHERE
    sal IN (
        SELECT
            MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );

-- any()
SELECT
    *
FROM
    emp
WHERE
    sal > ANY (
        SELECT
            MAX(sal) -- 서브쿼리문의 결과값의 최소값보다 큰 값
        FROM
            emp
        GROUP BY
            deptno
    );

-- all()
SELECT
    *
FROM
    emp
WHERE
    sal > ALL (
        SELECT
            sal -- 가장 큰 값보다 큰 값
        FROM
            emp
        WHERE
            deptno = 30
    );

SELECT
    *
FROM
    emp
WHERE
    EXISTS (
        SELECT
            dname
        FROM
            dept
        WHERE
            deptno = 50
    );

-- 다중열 서브쿼리
SELECT
    *
FROM
    emp
WHERE
    ( deptno,
      sal ) = (
        SELECT
            deptno,
            sal
        FROM
            emp
        WHERE
            ename = 'SMITH'
    );

SELECT
    *
FROM
    emp
WHERE
    ( deptno, sal ) IN (
        SELECT
            deptno, MAX(sal)
        FROM
            emp
        GROUP BY
            deptno
    );

-- 인라인뷰(가상테이블)
SELECT
    ee.*
FROM
    (
        SELECT
            ename,
            sal,
            comm,
            deptno
        FROM
            emp
    ) ee;

SELECT
    ename,
    d.deptno,
    dname,
    loc
FROM
    (
        SELECT
            *
        FROM
            emp
        WHERE
            deptno = 10
    ) e10,
    (
        SELECT
            *
        FROM
            dept
    ) d
WHERE
    e10.deptno (+) = d.deptno;

-- with
WITH e10 AS (
    SELECT
        *
    FROM
        emp
    WHERE
        deptno = 10
), d AS (
    SELECT
        *
    FROM
        dept
)
SELECT
    ename,
    d.deptno,
    dname,
    loc
FROM
    e10,
    d
WHERE
    e10.deptno (+) = d.deptno;

-- 서브쿼리문을 select 절에 작성한다.
SELECT
    empno,
    job,
    sal,
    (
        SELECT
            grade
        FROM
            salgrade
        WHERE
            emp.sal BETWEEN losal AND hisal
    ) AS salgrade,
    deptno,
    (
        SELECT
            dname
        FROM
            dept
        WHERE
            emp.deptno = deptno
    ) AS dname
FROM
    emp;

-- 문제 시작
SELECT
    job,
    empno,
    ename,
    trunc(sal) AS sal,
    e.deptno,
    dname
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND job = (
        SELECT
            job
        FROM
            emp
        WHERE
            ename = 'ALLEN'
    );

SELECT
    empno,
    ename,
    dname,
    hiredate,
    loc,
    trunc(sal) AS sal,
    grade
FROM
    emp      e,
    dept     d,
    salgrade s
WHERE
        e.deptno = d.deptno
    AND e.sal BETWEEN s.losal AND s.hisal
    AND sal > (
        SELECT
            AVG(sal)
        FROM
            emp
    )
ORDER BY
    sal DESC,
    empno;

SELECT
    empno,
    ename,
    job,
    e.deptno,
    dname,
    loc
FROM
    emp  e,
    dept d
WHERE
        e.deptno = d.deptno
    AND e.deptno = 10
    AND job NOT IN (
        SELECT DISTINCT
            job
        FROM
            emp
        WHERE
            deptno = 30
    );

SELECT
    empno,
    ename,
    sal,
    grade
FROM
    emp      e,
    salgrade s
WHERE
    e.sal BETWEEN s.losal AND s.hisal
    AND sal > (
        SELECT
            MAX(sal)
        FROM
            emp
        WHERE
            job = 'SALESMAN'
    )
ORDER BY
    empno;

SELECT
    empno,
    ename,
    sal,
    grade
FROM
    emp      e,
    salgrade s
WHERE
    e.sal BETWEEN s.losal AND s.hisal
    AND sal > ALL (
        SELECT DISTINCT
            sal
        FROM
            emp
        WHERE
            job = 'SALESMAN'
    )
ORDER BY
    empno;
-- 문제 끝
-- DDL : Data Definition Language
-- 데이터 정의어
-- 객체를 생성하는 명령어 (table을 생성)
CREATE TABLE dept_temp
    AS
        SELECT
            *
        FROM
            dept;

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
insert
into DEPT_TEMP(DEPTNO, DNAME, LOC)
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
    drop
        column tel;;

select *
from emp_copy;

-- 이름 변경
rename
    emp_copy to emp_alter;

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

flashback
    table emp_alter to before drop;

purge
    recyclebin;

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

create
    synonym E
    for EMP;

drop
    synonym E;

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

grant select on EMP to USER01;

create
    synonym E for EMP;

select *
from E;

revoke select on EMP from USER01;

-- 변수의 유형
-- 스칼라 방식 (기본 타입을 직접 정의)
-- 레퍼런스 방식 (기존 테이블의 컬럼의 타입을 참조)
-- 1. 열의 타입을 참조하는 방식  2. 열 전체의 타입을 참조하는 방식

-- PL/SQL
-- 변수, 조건문, 반복문

-- declare
--     변수명 타입; -- 변수선언
--     vempno number(4);
--     변수명 타입 := 값 -- 선언과 초기화
--     vename varchar2(20) := 'HONG';
--     vdeptno numbser(2) not null := 10;
--     v_tex constant numbser(2) := 20; -- 상수
-- begin
--     실행문(SQL)
--     vempno := 7799; -- 초기화
--     v_tex : = 20; -- 변경 불가
-- exception
-- end;
-- /

set serveroutput on;

begin
    DBMS_OUTPUT.PUT_LINE
        ('Hello world');
end;
/

declare
    vempno number(4);
    vename
           varchar2(20);
begin
    select empno, ename
    into vempno, vename
    from EMP
    where EMPNO = 7369;

    --     DBMS_OUTPUT.PUT_LINE(vempno);
--     DBMS_OUTPUT.PUT_LINE(vename);
    DBMS_OUTPUT
        .
        PUT_LINE
        ('사번' || ' 이름');
    DBMS_OUTPUT.PUT_LINE
        (vempno || ' ' || vename);
end;
/

-- declare
--     -- 레퍼런스 방식 (각각의 열타입 참조)
--     vdeptno dept.deptno%type; -- vdeptno number(2)
--     vdname dept.dname%type;
-- begin
--     select deptno, dname
--     into vdeptno,vdname
--     from dept
--     where deptno = 10;
-- end;
-- /

declare
    -- 레퍼런스 방식(전체 열의 타입 참조)
    v_dept dept%rowtype;
begin
    select *
    into v_dept -- v_dept.deptno, v_dept.dname, v_dept.loc
    from dept
    where deptno = 10;

    dbms_output.put_line(v_dept.deptno);
    dbms_output.put_line(v_dept.dname);
    dbms_output.put_line(v_dept.loc);
end;
/

declare
    -- 테이블 type -- 배열형식과 유사
--    type 타입이름 is table of 실제 데이터 타입
--    index by ?
    type ename_table_type is table of emp.ename%type

        index by binary_integer;

    ename_t ename_table_type;
    job_t   job_table_type;
    i       binary_integer := 0;

begin
    --    select ename into ename_t(i)
--    from emp
--    where ename = 'SMITH';

    for k in (select ename, job from emp)
        loop
            i := i + 1;
            ename_t(i) := k.ename;
            job_t(i) := k.job;
        end loop;

    for j in 1..i
        loop
            dbms_output.put_line(ename_t(j) || ' ' || job_t(j));
        end loop;

end;
/

declare
-- 레코드 타입
--    type ? is ? (
--        ?
--    );
    type emp_record_type is record
                            (
                                vempno  emp.empno%type,
                                vename  emp.ename%type,
                                vjob    emp.job%type,
                                vdeptno emp.deptno%type
                            );

    emp_r emp_record_type;
begin
    select empno, ename, job, deptno
    into emp_r -- emp_r.vempno, emp_r.vename ...
    from emp
    where ename = 'SMITH';

    dbms_output.put_line(emp_r.vempno || ' ' || emp_r.vename || ' ' || emp_r.vjob || ' ' || emp_r.vdeptno);

end;
/

declare
    vempno  emp.empno%type;
    vename  emp.ename%type;
    vdname  varchar2(20);
    vdeptno emp.deptno%type;
begin
    select empno, ename, deptno
    into vempno, vename, vdeptno
    from emp
    where ename = 'SMITH';

    if (vdeptno = 10) then
        vdname := 'ACCOUNTING';
    elsif (vdeptno = 20) then
        vdname := 'RESEARCH';
    elsif (vdeptno = 30) then
        vdname := 'SALES';
    elsif (vdeptno = 40) then
        vdname := 'OPERATIONS';
    end if;

    dbms_output.put_line(vempno);
    dbms_output.put_line(vdname);
    dbms_output.put_line(vdeptno);
    dbms_output.put_line(vdname);

end;
/

declare
    vemp   emp%rowtype;
    annsal number(7, 2);
begin
    select *
    into vemp
    from emp
    where ename = 'SMITH';

    if (vemp.comm is null) then
        annsal := vemp.sal * 12;
    else
        annsal := vemp.sal * 12 + vemp.comm;
    end if;

    dbms_output.put_line(vemp.ename || ' ' || vemp.sal || ' ' || vemp.comm || ' ' || annsal);
end;
/

declare
    vempno  emp.empno%type;
    vename  emp.ename%type;
    vdname  varchar2(20);
    vdeptno emp.deptno%type;
begin
    select empno, ename, deptno
    into vempno, vename, vdeptno
    from emp
    where ename = 'SMITH';

    case
        when vdeptno = 10 then dbms_output.put_line('10번 부서 입니다');
        when vdeptno = 20 then dbms_output.put_line('20번 부서 입니다');
        when vdeptno = 30 then dbms_output.put_line('30번 부서 입니다');
        when vdeptno = 40 then dbms_output.put_line('40번 부서 입니다');
        else dbms_output.put_line('부서 없음');
        end case;
end;
/

-- 반복문
-- LOOP(무한반복), WHILE, FOR
declare
    n number(3) := 1;
begin
    loop
        dbms_output.put_line(n);
        n := n + 1;
--        exit: when n > 5;
        if n > 5 then
            exit;
        end if;
    end loop;
end;
/

declare

begin
    for i in 1..10
        loop
            dbms_output.put_line(i);
        end loop;
end;
/

declare
    vdept dept%rowtype;
begin
    for i in 1..4
        loop
            select *
            into vdept
            from dept
            where deptno = 10 * i;
            dbms_output.put_line(vdept.deptno || ' ' || vdept.dname || ' ' || vdept.loc);
        end loop;
end;
/

declare
    n number := 1;
begin
    while n <= 10
        loop
            dbms_output.put_line(n);
            n := n + 1;
        end loop;
end;
/

declare

begin
    for i in reverse 1..10
        loop
            continue when mod(i, 2) = 1;
            dbms_output.put_line(i);
        end loop;
end;
/

create table emp_record
as
select *
from emp
where 1 <> 1;

declare
    type rec_emp is record
                    (
                        empno    emp.empno%type not null := -1, -- 조건이 not null일 경우 null일 때 값 반드시 표시
                        ename    emp.ename%type,
                        job      emp.job%type,
                        mgr      emp.mgr%type,
                        hiredate emp.hiredate%type,
                        sal      emp.sal%type,
                        comm     emp.comm%type,
                        deptno   emp.deptno%type
                    );

    emp_rec rec_emp;
begin
    emp_rec.empno := 1111;
    emp_rec.ename := 'Hong';
    emp_rec.job := 'sales';
    emp_rec.mgr := 2222;
    emp_rec.hiredate := to_date('20230512', 'yyyymmdd');
    emp_rec.sal := 1000;
    emp_rec.comm := null;
    emp_rec.deptno := 40;

    insert into emp_record
    values emp_rec;
end;
/

select *
from emp_record;

declare
    type emp_table is table of emp%rowtype
        index by pls_integer;

    emp_arr emp_table;
    idx     pls_integer := 0;
begin
    idx := idx + 1;
    for i in (select * from emp)
        loop
            emp_arr(idx).empno := i.empno;
            emp_arr(idx).ename := i.ename;
            emp_arr(idx).job := i.job;
            emp_arr(idx).hiredate := i.hiredate;
            emp_arr(idx).mgr := i.mgr;
            emp_arr(idx).sal := i.sal;
            emp_arr(idx).comm := i.comm;
            emp_arr(idx).deptno :=
                    i.deptno;
            dbms_output.put_line(emp_arr(idx).empno
                || ' : '
                || emp_arr(idx).ename
                || ' : '
                || emp_arr(idx).job
                || ' : '
                || emp_arr(idx).hiredate
                || ' : '
                || emp_arr(idx).mgr
                || ' : '
                || emp_arr(idx).sal
                || ' : '
                || emp_arr(idx).comm
                || ' : '
                || emp_arr(idx).deptno);
        end loop;

end;
/

-- 사원의 사번, 이름, 급여, 부서이름, 급여등급
-- 단 급여 등급이 4등급인 사원을 조회하는 프로시저를 완성하세요
-- 모든 사원 정보를 출력한다.
set serveroutput on;
declare
    type emp_table is table of EMP%rowtype
        index by pls_integer;

    type dept_table is table of DEPT%rowtype
        index by pls_integer;

    type salgrade_table is table of SALGRADE%rowtype
        index by pls_integer;

    emp_arr      emp_table;
    dept_arr     dept_table;
    salgrade_arr salgrade_table;
    idx          pls_integer := 0;
begin
    for i in (select empno, ename, sal, dname, grade
              from EMP,
                   DEPT,
                   SALGRADE
              where EMP.DEPTNO = DEPT.DEPTNO
                and EMP.SAL between SALGRADE.LOSAL and SALGRADE.HISAL
                and SALGRADE.GRADE >= 2)
        loop
            idx := idx + 1;
            emp_arr(idx).empno := i.empno;
            emp_arr(idx).ename := i.ename;
            emp_arr(idx).sal := i.sal;
            dept_arr(idx).dname := i.DNAME;
            salgrade_arr(idx).grade :=
                    i.grade;
            dbms_output.put_line(emp_arr(idx).empno
                || ' : '
                || emp_arr(idx).ename
                || ' : '
                || emp_arr(idx).sal
                || ' : '
                || dept_arr(idx).dname
                || ' : '
                || salgrade_arr(idx).grade);
        end loop;

end;
/

select *
from salgrade;

-- 커서 사용하기
--declare
--    cusor 커서명 is SQL구문 // 커서의 선언
--begin
--    open 커서명
--    fetch 커서명 into 변수
--    close 커서명
--end;
--/

declare
    vdept dept%rowtype;
    cursor c1 is select *
                 from dept; -- 커서의 선언
begin
    open c1;
    loop
        fetch c1 into vdept;
        exit when c1%NOTFOUND;
        dbms_output.put_line(vdept.deptno || ' ' || vdept.dname || ' ' || vdept.loc);
    end loop;
    close c1;
end;
/

declare
    cursor c1 is select *
                 from dept; -- 커서의 선언
begin
    for i in (select * from emp)
        loop
            dbms_output.put_line(i.deptno);
        end loop;
end;
/

-- 저장 프로시저
--create or replace procedure 프로시져명
--is
--    변수선언
--begin
--    실행문(SQL)
--end;
--/

--execute 프로시져명;

create or replace procedure pro_test
    is
    vempno number(10);
    vename varchar2(10);
begin
    vempno := 7777;
    vename := 'hong';
    DBMS_OUTPUT.PUT_LINE(vempno);
    DBMS_OUTPUT.PUT_LINE(vename);
end;
/

execute pro_test;

drop procedure pro_test;

create or replace procedure emp01_del
    is
begin
    delete from emp01;
end;
/

exec emp01_del;

create table emp01
as
select * from emp;

select * from emp01;

rollback;

-- 프로시저 조회
select * from user_source;

-- 저장 프로시져
--create or replace procedure 프로시져명(매개변수, ....)
--    is
--        변수선언
--begin
--        
--end;
--/

create or replace procedure del_ename(vename emp01.ename%type)
-- 매개변수의 타입(스칼라 방식)은 크기를 생략해야 한다.
    is
        
begin
    delete from emp01
    where ename = vename;
end;
/

exec del_ename('SMITH')

select * from emp01;

-- 프로시져의 매개변수 유형
-- in, out, in out

create or
    replace
    procedure
    sel_empno
    (
    vempno in emp01.empno%type,
    vename out emp01.ename%type,
    vsal out emp01.sal%type,
    vjob out emp01.job%type
    )
    is
    
    begin
SELECT
    ename,
    sal,
    job
INTO
    vename,
    vsal,
    vjob
FROM
    emp01
WHERE
    empno = vempno;
end;
/

declare
    v_ename emp01.ename%type;
    v_sal emp01.sal%type;
    v_job emp01.job%type;
begin
    sel_empno(7499, v_ename, v_sal, v_job);
    dbms_output.put_line(v_ename);
    dbms_output.put_line(v_sal);
    dbms_output.put_line(v_job);
end;
/

-- 저장 함수
-- 리턴값을 가진다.
--create or replace 함수명(매개수, ....)
--return 타입
--is
--    변수선언
--begin
--    실행문(SQL)
--    return 리턴값;
--end;
--/

create or replace function cal_boun(vempno IN emp01.empno%TYPE) 
    return number -- 크기와 ;는 생략한다.
is 
    vsal number(7, 2); 
begin
SELECT
    sal
INTO vsal
FROM
    emp01
WHERE
    empno = vempno;

RETURN vsal * 200;

end;
/

variable var_res number;

exec :var_res := cal_boun(7499);

print var_res;
