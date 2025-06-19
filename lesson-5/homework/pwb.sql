Alias ProductName as Name in the Products table:
SELECT ProductName AS Name, Price, Category
FROM Products;
 Alias the Customers table as Client:
SELECT Client.FirstName, Client.LastName
FROM Customers AS Client;
 Use UNION to combine product names from Products and Products_Discounted:
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;
 UNION removes duplicates automatically.
 Use INTERSECT to find common products between Products and Products_Discounted:
SELECT ProductName FROM Products
INTERSECT
SELECT ProductName FROM Products_Discounted;
 Select distinct customer names and their corresponding Country:
SELECT DISTINCT FirstName, LastName, Country
FROM Customers;
 Use CASE to create a column PriceLevel showing 'High' if Price > 1000, else 'Low':
SELECT ProductName, Price,
    CASE 
        WHEN Price > 1000 THEN 'High'
        ELSE 'Low'
    END AS PriceLevel
FROM Products;
 Use IIF to create a column showing 'Yes' if StockQuantity > 100, else 'No':
SELECT ProductName, StockQuantity,
    IIF(StockQuantity > 100, 'Yes', 'No') AS InStock
FROM Products_Discounted;

--Use UNION to combine ProductName from Products and Products_Discounted:
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;
🔹 UNION returns unique product names from both tables.
--Return the difference between Products and Products_Discounted using EXCEPT:
SELECT ProductName FROM Products
EXCEPT
SELECT ProductName FROM Products_Discounted;
🔹 Returns products that are in Products but not in Products_Discounted.
-- Create a conditional column using IIF to show 'Expensive' or 'Affordable':
SELECT ProductName, Price,
    IIF(Price > 1000, 'Expensive', 'Affordable') AS PriceCategory
FROM Products;
-- Find employees with Age < 25 or Salary > 60000:
SELECT * 
FROM Employees
WHERE Age < 25 OR Salary > 60000;
 --Update salary: increase by 10% if employee works in 'HR' or has EmployeeID = 5:
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR' OR EmployeeID = 5;

 -- Use CASE to categorize Sales into Tiers
SELECT 
    SaleID,
    CustomerID,
    SaleAmount,
    CASE 
        WHEN SaleAmount > 500 THEN 'Top Tier'
        WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
        ELSE 'Low Tier'
    END AS Tier
FROM Sales;
-- Use EXCEPT to find Customers who placed Orders but are not in Sales
SELECT DISTINCT CustomerID 
FROM Orders

EXCEPT

SELECT DISTINCT CustomerID 
FROM Sales;
-- Use CASE to assign Discount Percentage based on Quantity (from Orders)
SELECT 
    CustomerID,
    Quantity,
    CASE 
        WHEN Quantity = 1 THEN '3%'
        WHEN Quantity BETWEEN 2 AND 3 THEN '5%'
        ELSE '7%'
    END AS DiscountPercentage
FROM Orders;
