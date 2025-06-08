-- Total customers and their countries
SELECT Country, COUNT(*) AS Total_Customers
FROM Customer
GROUP BY Country
ORDER BY Total_Customers DESC;

-- Top 10 artists based on sales
SELECT ar.Name AS Artist, SUM(il.UnitPrice * il.Quantity) AS Total_Sales
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Most popular music genres
SELECT g.Name AS Genre, COUNT(*) AS Track_Count
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name
ORDER BY Track_Count DESC;

-- Customers who spent the most
SELECT c.FirstName || ' ' || c.LastName AS Customer_Name, SUM(i.Total) AS Total_Spent
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.CustomerId
ORDER BY Total_Spent DESC
LIMIT 10;

-- Sales performance of each support agent
SELECT e.FirstName || ' ' || e.LastName AS Employee_Name, SUM(i.Total) AS Total_Sales
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId
ORDER BY Total_Sales DESC;
