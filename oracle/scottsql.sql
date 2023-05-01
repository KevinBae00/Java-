select *
from tab;
desc bonus;
desc dept;
desc emp;
desc salgrade;

-- Structured Query Language : SQL
-- Data Query Language : DQL(데이터 조회)

-- select 컬럼명1, 컬럼명2, .....컬럼명n -- 컬럼명은 필요한 만큼만 작성한다.
-- from 테이블명;

select DEPTNO, DNAME, LOC
from DEPT;

select *
from DEPT;

select DNAME, LOC
from DEPT;

select *
from EMP;

-- 중복데이터 한번만 검색하기
select JOB
from EMP;

select distinct (JOB)
from EMP;

-- 컬럼을 사용한 데이터 연산
select *
from EMP;

-- +, -, *, /
select ENAME, SAL, SAL * 12
from EMP;

-- 컬럼명에 별칭사용하기 (as는 생략 가능)
select ENAME as 사원명, SAL as 급여, SAL * 12 as 연봉
from EMP;

-- 조회시 값의 정렬(내림, 오름)
-- asc 는 기본값이다. (생략가능하다)
-- 가장 마지막에 작성한다.
select *
from EMP
order by SAL desc; -- asc(오름) / desc(내림)

select *
from EMP
order by SAL asc, ENAME desc;
-- 첫번째는 전체데이터를 정렬하고, 두번재는 같은 겂을 그룹으로 묶어서 정렬한다.

-- 조건절
-- where 조건식(컬럼명 = 값) --> 참 / 거짓
-- <, >, <=, >=, =, !=, or <>
select *
from EMP
where SAL = 800;

select *
from EMP
where SAL >= 3000;

select *
from EMP
where DEPTNO = 10;

-- 문자를 조건절에 사용할 때
-- 조건절에서의 문자는 대소문자를 구분한다.
-- 문자를 반드시 '' 로 묶어주어야 한다. ("" 안됩니다.)
select *
from EMP
where ENAME = 'SMITH';

-- 날짜를 조건절에 사용할 떄
-- 크기 비교가 가능하다
-- ''로 묶어준다.
-- 80/09/30 // 년월일시분초 표준시 2023/05/01 12:30:22 GTM 9
select *
from EMP
where HIREDATE = '80/12/17';
-- 1980/12/17

-- 논리연산자
-- and, or, not
select *
from EMP
where DEPTNO = 10
  and SAL >= 2000;

select *
from EMP
where SAL >= 1000
  and SAL <= 3000;

select *
from EMP
where SAL >= 1000
  and SAL <= 3000
  and DEPTNO = 10;

select *
from EMP
where DEPTNO = 10
   or SAL >= 2000;

select *
from EMP
where SAL < 1000
   or SAL > 3000
order by SAL desc;

select *
from EMP
where not SAL <= 3000;

-- 논리연산자의 다른 표현
-- and
select *
from EMP
where SAL between 1000 and 2000; -- sal >= 1000 and sal <= 2000

select *
from EMP
where SAL in (800, 950, 5000); -- sal = 800 or sal = 950 or sal = 5000

select *
from EMP
where SAL not in (800, 950, 5000);

-- Like연산자
-- %, _ (와이드카드)
-- %는 나머지 문자 전체를 대신한다(선택)
-- _한문자를 대신한다(필수) _ _ _, __A, A____
-- where 컬럼명 like 값
select *
from EMP
where ENAME = 'F';

select *
from EMP
where ENAME like 'F%';

select *
from EMP
where ENAME like '%A%';

select *
from EMP
where ENAME like 'A____';

select *
from EMP
where ENAME like '_A%';

select *
from EMP
where COMM = null;
-- null데이터는 연산자 사용이 불가하다.

-- is null
-- is not null
select *
from EMP
where COMM is null;

select *
from EMP
where COMM is not null;

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
select EMPNO, ENAME, SAL, DEPTNO
from EMP
where DEPTNO = 10
union
select EMPNO, ENAME, SAL, DEPTNO
from EMP
where DEPTNO = 30;

-- 교집합
select EMPNO, ENAME, SAL, DEPTNO
from EMP
where DEPTNO = 10
intersect
select EMPNO, ENAME, SAL, DEPTNO
from EMP
where DEPTNO = 10;

select EMPNO, ENAME, SAL, DEPTNO
from EMP
where DEPTNO = 10
minus
select EMPNO, ENAME, SAL, DEPTNO
from EMP
where DEPTNO = 30

-- 문제 시작
select *
from EMP
where ENAME like '%S';

select EMPNO, ENAME, JOB, SAL, DEPTNO
from EMP
where JOB = 'SALESMAN';

select EMPNO, ENAME, JOB, SAL, DEPTNO
from EMP
where SAL > 2000
  and DEPTNO in (20, 30);

select EMPNO, ENAME, JOB, SAL, DEPTNO
from EMP
where SAL > 2000
  and DEPTNO = 20
union
select EMPNO, ENAME, JOB, SAL, DEPTNO
from EMP
where SAL > 2000
  and DEPTNO = 30;

select *
from EMP
where SAL < 2000
   or SAL > 3000;

select ENAME, EMPNO, SAL, DEPTNO
from EMP
where ENAME like '%E%'
  and DEPTNO = 30
  and SAL not between 1000 and 2000;

select *
from EMP
where COMM is null
  and MGR is not null
  and JOB in ('MANAGER', 'CLERK')
  and not ENAME like '_L%';