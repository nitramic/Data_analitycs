
SELECT BusinessEntityID, NationalIDNumber,LEFT(NationalIDNumber,3) AS id3
from HumanResources.Employee

SELECT AddressID, AddressLine1, Postalcode, TRIM(RIGHT(PostalCode,4)) as postal_4
from Person.Address

SELECT StateProvinceID, CONCAT(CountryRegionCode,'/',Name,'-',StateProvinceCode) as Region 
from Person.StateProvince

SELECT ProductPhotoID, REPLACE(ThumbnailPhotoFileName,'gif','jpg') as photo from Production.ProductPhoto

SELECT UnitMeasureCode, Name, YEAR(ModifiedDate) as año_Modif from Production.UnitMeasure

SELECT * FROM Sales.CreditCard