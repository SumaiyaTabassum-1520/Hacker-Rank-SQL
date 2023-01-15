------------------Select All--------------
Select * from CITY;

---------------------Select By ID----------
Select * from CITY
Where Id = 1661;

-------------------Japanese Cities' Attributes-------------
Select * from CITY
Where CountryCode = 'JPN';

----------------------Japanese Cities' Names-------------
Select Name From CITY
Where CountryCode = 'JPN';

----------------------Higher Than 75 Marks-------------
Select Name from Students 
Where Marks > 75 order by Substr(Name,-3),
Id Asc;

--------------------Employee Names-------------
Select Name from Employee
Order By Name Asc;

---------------------Employee Salaries------------
Select Name from Employee
Where Salary > 2000 and Months < 10
Order By Employee_id Asc;

--------------------Type of Triangle--------------
SELECT CASE
  WHEN (A+B<=C) THEN 'Not A Triangle'
  WHEN (A=B) AND (B=C) THEN 'Equilateral'
  WHEN (A=B) OR (B=C) OR (A=C) THEN 'Isosceles'
  WHEN (A!=B) OR (B!=C) OR (A!=C) THEN 'Scalene'
END
FROM triangles;


-----------------------Average Population------------------
Select Round(Avg(Population),0) From City;

---------------------Japan Population---------------
Select Sum(Population) from CITY
Where CountryCode = 'JPN';

------------------------Population Density Difference---------------
Select MAX(Population)-MIN(Population) from CITY;

---------------------------Top Earners------------------
Select max(salary*months) as total_salary,count(employee_id)
From Employee
Group by salary*months
Order by total_salary desc limit 1;

----------------------------Population Census-------------
Select sum(CITY.POPULATION)
From CITY,COUNTRY
Where CITY.CountryCode=COUNTRY.Code
     and COUNTRY.CONTINENT = 'Asia';

------------------------------African Cities-------------
Select CITY.Name From CITY,COUNTRY
Where CITY.CountryCode = COUNTRY.Code and Continent ='Africa';

---------------Average Population of Each Continent--------------
Select country.continent, floor(avg(city.population)) from city,country
Where city.countrycode = country.code group by continent;

------------------------Draw The Triangle 1-----------------
DELIMITER $$
CREATE PROCEDURE p(IN n INTEGER)
BEGIN
    WHILE n > 0 DO
        SELECT REPEAT('* ', n);
        SET n = n - 1;
    END WHILE;
END $$
CALL p(20);
 