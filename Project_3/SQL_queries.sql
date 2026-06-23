CREATE TABLE orders (

OrderID VARCHAR(50),
Date VARCHAR(50),
CustomerID VARCHAR(50),
Product VARCHAR(100),
Quantity VARCHAR(50),
UnitPrice VARCHAR(50),
ShippingAddress VARCHAR(200),
PaymentMethod VARCHAR(50),
OrderStatus VARCHAR(50),
TrackingNumber VARCHAR(100),
ItemsInCart VARCHAR(50),
CouponCode VARCHAR(50),
ReferralSource VARCHAR(50),
TotalPrice VARCHAR(50)

);orders
USE ecommerce_analysis;
SELECT *
FROM orders;

SELECT 
COUNT(OrderID) AS Total_Orders
FROM orders;

SELECT 
SUM(TotalPrice) AS Total_Revenue
FROM orders;

SELECT 
AVG(TotalPrice) AS Average_Order_Value
FROM orders;

SELECT 
MIN(TotalPrice) AS Minimum_Order
FROM orders;

SELECT 
MAX(TotalPrice) AS Maximum_Order
FROM orders;

SELECT
Product,
SUM(Quantity) AS Total_Sold
FROM orders
GROUP BY Product;

SELECT
Product,
SUM(Quantity) AS Total_Sold
FROM orders
GROUP BY Product
ORDER BY Total_Sold DESC;

SELECT
Product,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC;

SELECT
CustomerID,
COUNT(OrderID) AS Number_of_Orders
FROM orders
GROUP BY CustomerID
ORDER BY Number_of_Orders DESC;

SELECT
PaymentMethod,
COUNT(OrderID) AS Total_Orders
FROM orders
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;


SELECT
OrderStatus,
COUNT(OrderID) AS Orders
FROM orders
GROUP BY OrderStatus;

SELECT *
FROM orders
WHERE TotalPrice > 5000;


SELECT *
FROM orders
ORDER BY TotalPrice DESC
LIMIT 10;

SELECT
MONTH(Date) AS Month,
SUM(TotalPrice) AS Monthly_Sales
FROM orders
GROUP BY MONTH(Date)
ORDER BY Month;


SELECT

COUNT(OrderID) AS Total_Orders,

SUM(TotalPrice) AS Total_Revenue,

AVG(TotalPrice) AS Average_Order_Value

FROM orders;