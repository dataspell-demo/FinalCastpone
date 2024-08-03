PREPARE getInfoOrder from
    'SELECT OrderId, CustomerName
    FROM Orders
    join Customers ON Orders.CustomerID = Customers.CustomerID where Orders.CustomerID>?';

set @id =1;
execute getInfoOrder using @id;

PREPARE getInfoOrder2 FROM
    'SELECT OrderId, TotalCost,CustomerName
    FROM Orders
    join Customers ON Orders.CustomerID = Customers.CustomerID where Orders.CustomerID > ?';

SET @id = 1;
EXECUTE getInfoOrder2 USING @id;

