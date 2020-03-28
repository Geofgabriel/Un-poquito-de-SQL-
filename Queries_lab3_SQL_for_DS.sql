--Query 1: Retrieve all employees whose address is in Elgin,IL--

select l_name, address from employees where address  like '%Elgin%';

--Query 2: Retrieve all employees who were born during the 1970's.--

select l_name, b_date from employees where b_date like '197%';

--Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000--

select l_name, salary from employees where (salary between 60000 and 70000) and dep_id=5;

--Query 4A: Retrieve a list of employees ordered by department ID.--

select dep_id from employees order by dep_id;

-- Query 4B: Retrieve a list of employees ordered in descending order by department ID-- 
--and within each department ordered alphabetically in descending order by last name.--

select l_name, dep_id from employees order by dep_id desc ,l_name desc ;


-- Query 5A: For each department ID retrieve the number of employees in the department.--

select dep_id,count(dep_id) 
from employees
group by dep_id;

-- Query 5B: For each department retrieve the number of employees in the department, 
--and the average employees salary in the department.--


select dep_id, count(*), avg(salary)
from employees
group by dep_id;

--Query 5C: Label the computed columns in the result set of Query 5B as “NUM_EMPLOYEES” --
--and “AVG_SALARY”.--

select dep_id, count(*) as "num_employees", avg(salary) as "avg_salary"
from employees
group by dep_id;

-- Query 5D: In Query 5C order the result set by Average Salary.--


select dep_id, count(*) as "num_employees", avg(salary) as "avg_salary"
from employees
group by dep_id 
order by avg(salary);

-- Query 5E: In Query 5D limit the result to departments with fewer than 4 employees.--

select dep_id, count(*) as "num_employees", avg(salary) as "avg_salary"
from employees
group by dep_id 
having count(dep_id) < 4
order by avg(salary)
;














