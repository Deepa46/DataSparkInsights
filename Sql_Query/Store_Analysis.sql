use damm;
--- OrderByStoreCountry
SELECT
	s.StoreCountry,  
	COUNT(DISTINCT m.OrderNumber) AS NumberOfOrders
FROM
     merged_data m 
JOIN 
     store_data s ON m.StoreKey = s.StoreKey
GROUP BY 
      s.StoreCountry;
      
---- StoreSalePerformance
SELECT 
    s.StoreKey,
    s.StoreCountry,
    DATE_FORMAT(m.OrderDate, '%Y') AS Year,
    SUM(m.TotalSalesAmount) AS TotalSales,                               
    SUM(m.Quantity) AS TotalQuantity   
FROM 
    merged_data m
JOIN 
    store_data s ON m.StoreKey = s.StoreKey
GROUP BY 
    s.StoreKey, Year, s.StoreCountry
ORDER BY 
    s.StoreKey, Year;
