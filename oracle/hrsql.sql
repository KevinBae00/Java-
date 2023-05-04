select FIRST_NAME || ' ' || LAST_NAME as NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES e
         left outer join DEPARTMENTS d
                         on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select FIRST_NAME || ' ' || LAST_NAME as NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME, e.JOB_ID, JOB_TITLE
from EMPLOYEES e
         left outer join DEPARTMENTS d
                         on e.DEPARTMENT_ID = d.DEPARTMENT_ID
         left outer join JOBS j
                         on e.JOB_ID = j.JOB_ID;

select FIRST_NAME || ' ' || LAST_NAME as NAME,
       e.DEPARTMENT_ID,
       DEPARTMENT_NAME,
       e.JOB_ID,
       JOB_TITLE,
       d.LOCATION_ID,
       COUNTRY_ID
from EMPLOYEES e
         left outer join DEPARTMENTS d
                         on e.DEPARTMENT_ID = d.DEPARTMENT_ID
         left outer join JOBS j
                         on e.JOB_ID = j.JOB_ID
         left outer join LOCATIONS l
                         on d.LOCATION_ID = l.LOCATION_ID;

select FIRST_NAME || ' ' || LAST_NAME as NAME,
       e.DEPARTMENT_ID,
       DEPARTMENT_NAME,
       e.JOB_ID,
       JOB_TITLE,
       d.LOCATION_ID,
       COUNTRY_ID
from EMPLOYEES e
   , DEPARTMENTS d
   , JOBS j
   , LOCATIONS l
where e.DEPARTMENT_ID = d.DEPARTMENT_ID(+)
  and e.JOB_ID = j.JOB_ID(+)
  and d.LOCATION_ID = l.LOCATION_ID(+);