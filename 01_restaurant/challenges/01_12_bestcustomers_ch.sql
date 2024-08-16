-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.


SELECT Customers.FirstName, Customers.LastName, Customers.Email, COUNT(Orders.orderID) AS Number_of_Orders 
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY customers.CustomerID
ORDER BY Number_of_Orders DESC
LIMIT 10;