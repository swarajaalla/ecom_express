SELECT * FROM inventory.order_details;

SELECT O.ProductId as ProductId , P.Product_name as Product_name, 
 count(O.OrderID) as No_Of_Orders, sum(O.profit) as Profit, P.Availability,P.rating 
 FROM order_details O  INNER Join product P ON O.ProductId = P.Product_ID
 GROUP BY O.ProductId;
