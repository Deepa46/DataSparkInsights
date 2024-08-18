-- Customer Count
SELECT 
    Gender, 
    City, 
    State, 
    Country, 
    Continent, 
    COUNT(*) as CustomerCount
FROM 
    merged_data
GROUP BY 
    Gender, City, State, Country, Continent
ORDER BY 
    CustomerCount DESC;

---- Age Group Category
SELECT 
    Country,
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, Birthday, CURDATE()) BETWEEN 18 AND 24 THEN '18-24'
        WHEN TIMESTAMPDIFF(YEAR, Birthday, CURDATE()) BETWEEN 25 AND 34 THEN '25-34'
        WHEN TIMESTAMPDIFF(YEAR, Birthday, CURDATE()) BETWEEN 35 AND 44 THEN '35-44'
        WHEN TIMESTAMPDIFF(YEAR, Birthday, CURDATE()) BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS AgeGroup,
    COUNT(DISTINCT CustomerKey) AS CustomerCount
FROM 
    merged_data
GROUP BY 
    Country, 
    AgeGroup
ORDER BY 
    Country, 
    AgeGroup;
