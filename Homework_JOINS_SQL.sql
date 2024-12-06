
USE Northwind

-- 1. Ta fram alla ordrar för en kund med kundid ”ALFKI”. 
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
-- 2. Läs ut KundNamn, Address, City, Postalcode för alla kunder som har en order som är skapad
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
-- 3. Läs ut pris, produktnamn och supplierns namn för alla produkter som har ett pris större än 8.

SELECT
p.ProductName,
s.CompanyName,
p.UnitPrice
FROM Products p INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 8


-- -------------------------------------------------------------------------------------------
-- 4. Läs ut namn på alla produkter i den order som har orderid 10287.
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
-- 6. Ta fram alla produkter som kunden ”Alfreds Futterkiste” köpt. 
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
-- 7. Ta fram alla produkter som leverantören ”Grandma Kelly's Homestead” levererar och som
-- innehåller texten ”berry” någonstans i produktnamnet. 
-- Texten kan vara angiven med både stora och små bokstäver. 
-- Resultatet skall bara visa antalet produkter utan att visa någon information om produkterna.

-- -------------------------------------------------------------------------------------------
-- 8. Räkna hur många orderrader som innehåller produkten ”Chai”. 
-- Räkna sedan hur många exemplar av produkten (kvantitet) som sålts dvs ingår i någon order.

-- -------------------------------------------------------------------------------------------
-- 9. Ta fram alla leverantörer som finns i USA och har produkter inom kategorin ”Condiments”.

-- -------------------------------------------------------------------------------------------
-- 10. Ta fram alla produkter som sålts under februari månad år 1998 . 
-- Visa produktnamn, priset på orderraden och vilken leverantör som levererar produkten. 
-- Sortera på kategori och visa även namnet på kategorin för produkten.

-- -------------------------------------------------------------------------------------------
-- 11. Ta fram alla leverantörer som finns i London och har produkter som kostar mer än 8,00.

-- -------------------------------------------------------------------------------------------
-- 12. Visa namn på de leverantörer vars namn börjar på bokstaven A och har levererat produkter
-- under februari månad år 1998 dvs vars produkter finns med i någon order under denna tid.

-- -------------------------------------------------------------------------------------------
-- 13. Ta fram namn på alla kunder som har köpt produkten ”Inlagd Sill”. 
-- Visa också vilket datum de köpte produkten.
 
-- -------------------------------------------------------------------------------------------
-- 14. Vilken produktgrupp (category) har flest produkter? 
-- Hur många? 
-- Visa alla grupper och sortera så att den med flest produkter hamnar överst i listan.

-- -------------------------------------------------------------------------------------------
-- 15. Hur många order har fraktbolag(shipper) ”United Package” skickat till Sverige under 1998?
-- Visa en siffra på hur många ordrar.

-- -------------------------------------------------------------------------------------------
-- 16. Ta fram alla produkter som kunden ”Ernst Handel” köpt. 
-- Visa kundnamn, gatuadress, postort, postnr samt leverantörens och produktens namn. 
-- I resultatet skall dels kundens postnr och postort slås ihop och visas som en kolumn med alias ”Postadress”. 
-- Dessutom skall leverantörens och produktens namn slås ihop till en kolumn med ett bindestreck emellan.
-- Alias för detta skall vara ”Produktinformation”.

-- -------------------------------------------------------------------------------------------
-- 17. Hur stor kvantitet av produkten ”Queso Cabrales” har sålts under februari
-- månad 1997? Visa bara en siffra.

-- -------------------------------------------------------------------------------------------
-- 18. Visa namn de leverantörer vars namn börjar på bokstaven B 
-- och har levererat produkter under 1998 dvs vars produkter finns med i någon order under denna tid. 
-- Visa deras Adress samt postnr och postort sammanslaget till en kolumn med alias ”Postadress”. 