SELECT * FROM Students;

SELECT name,age FROM Students;

SELECT name,age,city FROM Students WHERE city="salem";

SELECT name,age,city FROM Students WHERE city="salem" OR city="namakkal";

SELECT name,age,city FROM Students WHERE city IN("salem","namakkal");-- NOT IN();

SELECT name,age,city FROM Students WHERE city="salem" AND age>18;

SELECT name,age,city FROM Students WHERE (city="salem" OR city="namakkal") AND age>18;

SELECT name,age,city FROM Students WHERE (city="salem" OR city="namakkal") AND age>18 ORDER BY city;

SELECT DISTINCT city FROM Students;

SELECT COUNT(city) FROM Students;

SELECT COUNT(DISTINCT city) FROM Students;

SELECT COUNT(DISTINCT city) AS total FROM Students;

SELECT * FROM Students LIMIT 10,20; 10,5 0,1 

SELECT * FROM Students ORDER BY DESC id LIMIT 0,1;

SELECT name, age,salary,dept FROM employees ORDER BY dept ASC,salary DESC;

SELECT * FROM Students LIMIT 2;

SELECT gender,COUNT(id) AS total FROM Students GROUP BY gender; -- see what happens after removing 'group by gender'

SELECT name FROM Students WHERE name LIKE 'RA%'; --  '%RA' '%RA%' 's___' '___s' '__s__  //NOT LIKE...

SELECT name,age FROM Students WHERE age BETWEEN 20 AND 30;

SELECT id,COUNT(adate) AS working,COUNT(IF(astatus='p',1,NULL)) AS present FROM attendance GROUP BY id;

select name,city {} AS amt FROM Students;


select name,city
{
  CASE 
    WHEN city='salem' THEN 100
    WHEN city='namakkal' THEN 150
    WHEN city='chennai' THEN 300
    WHEN city='hosur' THEN 350
    WHEN city='dhar' THEN 450
    ELSE 0
  END 
}AS amt FROM Students;

SELECT dept,COUNT(*) AS total FROM employees GROUP BY dept;

SELECT dept,COUNT(*) AS totalem,SUM(salary) AS totalsy FROM employees GROUP BY dept;

SELECT dept,COUNT(*) AS totalem,SUM(salary) AS totalsy FROM employees GROUP BY dept HAVING COUNT(*) >1; -- HAVING should always comes for COUNT not WHERE
