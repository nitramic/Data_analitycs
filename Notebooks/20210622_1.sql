SELECT top 10*
FROM HumanResources.Employee

-- seleccionar caracteres de Derecha o Izquierda

SELECT top 10 birthdate, LEFT(BirthDate,4), RIGHT(BirthDate, 6)
FROM HumanResources.Employee

SELECT top 10 LEFT(Jobtitle,10)
FROM HumanResources.Employee

-- Reemplazar un caracter especifico en campos VARCHAR
Select REPLACE(loginid, '\','-') as reemplazo
FROM HumanResources.Employee

Select REPLACE(loginid, 'adventure-works','.') as reemplazo
FROM HumanResources.Employee

--concatenar
SELECT TOP 10 * FROM Person.Address 

SELECT city, stateprovinceid,  CONCAT(city,'-',stateprovinceid)
FROM Person.Address

-- Reemplazo UPPER o lower
SELECT city, LOWER(city) as city_minusculas
from Person.Address

SELECT city, UPPER(city) as city_mayusculas
from Person.Address

--Elimina espacios al ppio o al final
select TRIM(city)
FROM Person.Address

--Fechas
select * 
FROM HumanResources.Employee

SELECT top 10 
birthdate,
YEAR(birthdate) as birth_year,
MONTH(birthdate) as birth_month,
DAY(birthdate) as bith_day
FROM HumanResources.Employee

-- Reemplazo (Revisar)
 SELECT top 10 birthdate,
 DATEPART(MONTH,birthday) as brth_month,
 DATENAME(MONTH,birthname) as month_name
 FROM HumanResources.Employee


--- Agregar dias 
select top 10
BirthDate, DATEADD(day, 2, BirthDate) as date_sumado,
DATEADD(DAY, -30, BirthDate) as date_resta
FROM HumanResources.Employee


-- continuar 2115 aprox
select top 10 *  from  