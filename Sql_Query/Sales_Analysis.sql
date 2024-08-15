
--- Store Channel(Online//In-Store)
SELECT 
    Country,
    State,
    City,
    OnlineVsInstore AS SalesChannel,
    SUM(TotalSalesAmount) AS TotalSales
FROM 
    merged_data
GROUP BY 
    Country, 
    State, 
    City, 
    OnlineVsInstore
ORDER BY 
    Country, 
    State, 
    City, 
    SalesChannel;

-- Product Profit Margin by country
Use damm;
SELECT 
    ProductName,
    Country,
    (SUM(TotalSalesAmount) - SUM(TotalCost)) / SUM(TotalSalesAmount) AS ProfitMargin
FROM 
    merged_data
GROUP BY 
    ProductName,
    Country;

-- Sales by year
SELECT 
    YEAR(OrderDate) AS Year, 
    SUM(TotalSalesAmount) AS TotalSales 
FROM 
    merged_data 
GROUP BY 
    Year 
ORDER BY 
    Year;
    
-- Total Sales
SELECT 
    Country, 
    Category, 
    Brand, 
    SUM(TotalSalesAmount) AS TotalSales 
FROM 
    merged_data 
GROUP BY 
    Country, 
    Category, 
    Brand 
ORDER BY 
    Country, 
    Category, 
    TotalSales DESC;





