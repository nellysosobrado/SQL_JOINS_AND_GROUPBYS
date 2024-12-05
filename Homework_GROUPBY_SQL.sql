
-- https://www.youtube.com/watch?v=fsLjuhQ5Ddw&t=477s&ab_channel=SQLwithManoj

USE Northwind


-- COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT
-- COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT
-- COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT
-- COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT COUNT

-- 1. Hur många anställda?
SELECT * FROM Employees
SELECT COUNT(*) FROM Employees -- Räknar allt i tabelle

SELECT COUNT(EmployeeID) FROM Employees -- specifikt emplyeeid

-- 2. Hur många anställda (records) i varje jobbtitel?
SELECT * FROM Employees
SELECT Title, COUNT(*) AS TotalWorker FROM Employees
GROUP BY Title

-- aggregation cannot be used togheter with a non-aggregation functio. Syntax error

-- How many people (rows) in every job title?
SELECT * FROM Employees

SELECT COUNT(Title) 
FROM Employees


-- 3. Gruppera anställda i Title & City?
SELECT * FROM Employees


SELECT  Title, City, COUNT(*) AS NumberOfEmplyee FROM Employees
GROUP BY Title, City
ORDER BY Title

-- Using Count, requires 'GROUP BY' because sql daoesnt understand what to do with title, city. Therefore it needs to be specified

-- 4. När anställdes våra anställda??
SELECT * FROM Employees
SELECT EmployeeID, HireDate FROM Employees
SELECT EmployeeID, YEAR(HireDate) AS HireYear 
FROM Employees



-- MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG
-- MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG
-- MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG
-- MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG MIN MAX AVG

-- Visa MIN, MAX och AVG UnitPrice i Products tabellen (no GROUP BY needed when only using Aggregate methods)
SELECT * FROM Products
SELECT
MIN(UnitPrice) AS [Lowest UnitPrice], -- Requires to use [] square brackets if there's spaces
MAX(UnitPrice) AS[ Highest UnitPrice],
AVG(UnitPrice) AS [Average UnitPrice]
FROM Products

-- Visa MIN, MAX och AVG UnitPrice i Products tabellen
-- Denna gång ska vi gruppera vid SupplierId & CategoryId<

SELECT * FROM Products
SELECT
SupplierID,
CategoryID,
MIN(UnitPrice) AS Min,
MAX(UnitPrice) AS MAX,
AVG(UnitPrice) AS Average
FROM Products
GROUP BY SupplierID, CategoryID

-- SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM
-- SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM
-- SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM
-- SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM SUM

-- Hur många av varje produkt har vi i lagret? (sorted descending)
SELECT * FROM Products
SELECT 
ProductName,
SUM(UnitsInStock) AS INSTOCK
FROM Products
GROUP BY ProductName
ORDER BY INSTOCK DESC

--07 GroupBy.sql
--Displaying 07 GroupBy.sql.