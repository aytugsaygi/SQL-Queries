--SELECT * FROM Orders
--SELECT * FROM Customers

--CREATE VIEW view_ulkeye_ve_tarihe_gore_siparisler
--AS
--SELECT * FROM Orders
--WHERE CustomerID IN 
--(SELECT CustomerID FROM Customers WHERE Country = 'Germany' OR Country = 'UK') 
--AND OrderDate >= '19980101'

SELECT * FROM view_ulkeye_ve_tarihe_gore_siparisler