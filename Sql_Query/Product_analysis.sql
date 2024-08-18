--- Least 10 Sale Product 
SELECT 
    ProductName,
    SUM(TotalSalesAmount) AS TotalSales
FROM 
    merged_data
GROUP BY 
    ProductName
ORDER BY 
    TotalSales ASC
LIMIT 10;

--- Top Sale Product

SELECT 
    ProductName, 
    SUM(TotalSalesAmount) AS TotalSales 
FROM 
    merged_data 
GROUP BY 
    ProductName 
ORDER BY 
    TotalSales DESC 
LIMIT 10;

-- Sales Performance by Category and Subcategory
SELECT 
    Country,
    Category,
    Subcategory,
    SUM(TotalSalesAmount) AS TotalSales,
    SUM(Quantity) AS TotalUnitsSold,
    SUM(Profit) AS TotalProfit
FROM 
    merged_data
GROUP BY 
    Country,
    Category,
    Subcategory
ORDER BY 
    TotalSales DESC;






