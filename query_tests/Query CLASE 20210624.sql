SELECT * from HumanResources.Employee
SELECT * FROM HumanResources.EmployeePayHistory


-- EJ 1
SELECT NationalIDNumber, Rate FROM  HumanResources.Employee HRE
LEFT JOIN HumanResources.EmployeePayHistory HREPH
ON HRE.BusinessEntityID = HREPH.BusinessEntityID 
WHERE Gender = 'F' AND DATEPART(YEAR,HireDate) >= 2009

--EJ 2

SELECT * from Person.BusinessEntityContact 
SELECT * from Person.BusinessEntityAddress

SELECT PBEC.BusinessEntityID, PersonID, ContactTypeID, AddressTypeID FROM Person.BusinessEntityContact PBEC
INNER JOIN Person.BusinessEntityAddress PBEA
ON PBEC.BusinessEntityID = PBEA.BusinessEntityID
WHERE PBEC.BusinessEntityID >= 1000