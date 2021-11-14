SELECT *
FROM Sales.Customer

GO

SELECT *
FROM Sales.Store 
ORDER BY Name ASC

GO

SELECT  TOP 10 * 
FROM HumanResources.Employee
WHERE BirthDate > '1989-09-28'

GO

SELECT NationalIDNumber, LoginID, JobTitle
FROM HumanResources.Employee
WHERE LoginID LIKE '%0'
ORDER BY JobTitle DESC

GO

SELECT *
FROM Person.Person
WHERE ModifiedDate LIKE '%2008%'  AND MiddleName IS NOT NULL AND Title IS NULL

GO

SELECT DISTINCT Name
FROM HumanResources.Department 
FULL JOIN HumanResources.EmployeeDepartmentHistory
ON HumanResources.EmployeeDepartmentHistory.DepartmentID = HumanResources.Department.DepartmentID
WHERE EndDate IS NULL

GO

SELECT TerritoryID, 
SUM(CommissionPct) AS CommissionPctSum
FROM Sales.SalesPerson
GROUP BY TerritoryID
HAVING SUM(CommissionPct) > 0

GO

SELECT * 
FROM HumanResources.Employee
WHERE VacationHours = (SELECT MAX(VacationHours) FROM HumanResources.Employee)

GO

SELECT *
FROM HumanResources.Employee
WHERE HumanResources.Employee.JobTitle IN ('Sales Representative', 'Network Administrator', 'Network Manager')

GO

SELECT *
FROM HumanResources.Employee emp
LEFT JOIN Purchasing.PurchaseOrderHeader pur
ON emp.BusinessEntityID = pur.EmployeeID

GO

