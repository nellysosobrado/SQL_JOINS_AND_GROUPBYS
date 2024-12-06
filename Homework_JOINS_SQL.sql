
USE Northwind

-- 1. Ta fram alla ordrar f�r en kund med kundid �ALFKI�. 
-- Visa kundnamn, kundid, orderid, orderdatum och shippeddate.
SELECT * FROM Customers
SELECT * FROM Orders

SELECT 
c.CompanyName,
c.CustomerID,
o.OrderID,
o.OrderDate,
o.ShippedDate

FROM Orders AS o
INNER JOIN
Customers c On o.CustomerID = c.CustomerID
WHERE o.CustomerID = 'ALFKI'



-- -------------------------------------------------------------------------------------------
-- 2. L�s ut KundNamn, Address, City, Postalcode f�r alla kunder som har en order som �r skapad
-- innan 1998-01-31.

SELECT DISTINCT
c.CompanyName,
c.Address,
c.PostalCode,
o.OrderID
FROM Orders AS o
INNER JOIN
Customers AS c
ON o.CustomerID = c.CustomerID
WHERE o.OrderDate < '1998-01-31'
ORDER BY o.OrderID

-- -------------------------------------------------------------------------------------------
-- 3. L�s ut pris, produktnamn och supplierns namn f�r alla produkter som har ett pris st�rre �n 8.

SELECT
p.ProductName,
s.CompanyName,
p.UnitPrice
FROM Products p INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 8


-- -------------------------------------------------------------------------------------------
-- 4. L�s ut namn p� alla produkter i den order som har orderid 10287.
SELECT * FROM [Order Details]
SELECT * FROM Products

SELECT
p.ProductName,
od.OrderID
FROM [Order Details] AS od
INNER JOIN Products AS p ON od.ProductID = p.ProductID
WHERE od.OrderID = 10287

-- -------------------------------------------------------------------------------------------
-- 5. Ta fram alla produkter som suppliern med id 1 levererar. 
-- Visa produktens namn och supplierns namn.
SELECT * FROM Products
SELECT * FROM Suppliers

SELECT
p.ProductName,
s.CompanyName

FROM Products AS p
INNER JOIN Suppliers AS s ON s.SupplierID= p.ProductID
WHERE s.SupplierID = 1

SELECT 
p.ProductName,
s.CompanyName

FROM Products AS p
INNER JOIN Suppliers AS s ON s.SupplierID= p.ProductID
WHERE s.SupplierID = 1


-- -------------------------------------------------------------------------------------------
-- 6. Ta fram alla produkter som kunden �Alfreds Futterkiste� k�pt. 
-- Visa kundnamn, gatuadress,postort, postnr samt produktens namn och quantity.
SELECT * FROM Customers
SELECT * FROM Products
SELECT * FROM Orders

select
c.CompanyName,
c.Address,
c.Region,
c.PostalCode,
p.ProductName,
od.Quantity

FROM Orders AS o
INNER JOIN [Order Details] AS od ON o.OrderID = od.OrderID
INNER JOIN Customers AS c ON c.CustomerID = o.CustomerID
INNER JOIN Products AS p ON p.ProductID = od.ProductID
WHERE c.CompanyName = 'Alfreds Futterkiste'

-- -------------------------------------------------------------------------------------------
-- 7. Ta fram alla produkter som leverant�ren �Grandma Kelly's Homestead� levererar och som
-- inneh�ller texten �berry� n�gonstans i produktnamnet. 
-- Texten kan vara angiven med b�de stora och sm� bokst�ver. 
-- Resultatet skall bara visa antalet produkter utan att visa n�gon information om produkterna.

-- -------------------------------------------------------------------------------------------
-- 8. R�kna hur m�nga orderrader som inneh�ller produkten �Chai�. 
-- R�kna sedan hur m�nga exemplar av produkten (kvantitet) som s�lts dvs ing�r i n�gon order.

-- -------------------------------------------------------------------------------------------
-- 9. Ta fram alla leverant�rer som finns i USA och har produkter inom kategorin �Condiments�.

-- -------------------------------------------------------------------------------------------
-- 10. Ta fram alla produkter som s�lts under februari m�nad �r 1998 . 
-- Visa produktnamn, priset p� orderraden och vilken leverant�r som levererar produkten. 
-- Sortera p� kategori och visa �ven namnet p� kategorin f�r produkten.

-- -------------------------------------------------------------------------------------------
-- 11. Ta fram alla leverant�rer som finns i London och har produkter som kostar mer �n 8,00.

-- -------------------------------------------------------------------------------------------
-- 12. Visa namn p� de leverant�rer vars namn b�rjar p� bokstaven A och har levererat produkter
-- under februari m�nad �r 1998 dvs vars produkter finns med i n�gon order under denna tid.

-- -------------------------------------------------------------------------------------------
-- 13. Ta fram namn p� alla kunder som har k�pt produkten �Inlagd Sill�. 
-- Visa ocks� vilket datum de k�pte produkten.
 
-- -------------------------------------------------------------------------------------------
-- 14. Vilken produktgrupp (category) har flest produkter? 
-- Hur m�nga? 
-- Visa alla grupper och sortera s� att den med flest produkter hamnar �verst i listan.

-- -------------------------------------------------------------------------------------------
-- 15. Hur m�nga order har fraktbolag(shipper) �United Package� skickat till Sverige under 1998?
-- Visa en siffra p� hur m�nga ordrar.

-- -------------------------------------------------------------------------------------------
-- 16. Ta fram alla produkter som kunden �Ernst Handel� k�pt. 
-- Visa kundnamn, gatuadress, postort, postnr samt leverant�rens och produktens namn. 
-- I resultatet skall dels kundens postnr och postort sl�s ihop och visas som en kolumn med alias �Postadress�. 
-- Dessutom skall leverant�rens och produktens namn sl�s ihop till en kolumn med ett bindestreck emellan.
-- Alias f�r detta skall vara �Produktinformation�.

-- -------------------------------------------------------------------------------------------
-- 17. Hur stor kvantitet av produkten �Queso Cabrales� har s�lts under februari
-- m�nad 1997? Visa bara en siffra.

-- -------------------------------------------------------------------------------------------
-- 18. Visa namn de leverant�rer vars namn b�rjar p� bokstaven B 
-- och har levererat produkter under 1998 dvs vars produkter finns med i n�gon order under denna tid. 
-- Visa deras Adress samt postnr och postort sammanslaget till en kolumn med alias �Postadress�. 