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
    Category,
    Subcategory,
    SUM(TotalSalesAmount) AS TotalSales,
    SUM(Quantity) AS TotalUnitsSold,
    SUM(Profit) AS TotalProfit
FROM 
    merged_data
GROUP BY 
    Category,
    Subcategory
ORDER BY 
    TotalSales DESC;

--- StoreCount By Country

SELECT 
    StoreCountry, 
    COUNT(StoreKey) AS NumberOfStores
FROM 
    store_data
GROUP BY 
    StoreCountry
ORDER BY 
    NumberOfStores DESC;




