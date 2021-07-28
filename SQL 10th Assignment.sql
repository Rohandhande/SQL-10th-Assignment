--Q-1. Write an SQL query to determine the 5th highest salary without using TOP or limit method.


SELECT first_name, last_name, department ,salary
FROM (
    SELECT first_name, last_name,Department, salary, ROW_NUMBER() over( order by salary desc) as highest_salary
    FROM worker
	)
worker
WHERE highest_salary = 5



--q2 .Write an SQL query to fetch the list of employees with the same salary.

select * from Worker
where salary in 
(select salary 
from Worker
group by salary 
having count(*)>1)
order by salary 