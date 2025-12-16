SELECT MIN(age) FROM Students;

SELECT AVG(age) FROM Students;

SELECT ROUND(AVG(age),0) FROM Students;

SELECT SUM(age) FROM Students;

SELECT gender,COUNT(id) AS total FROM Students GROUP BY gender; //see what happens after removing 'group by gender'