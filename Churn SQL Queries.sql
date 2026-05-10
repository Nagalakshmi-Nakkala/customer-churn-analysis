CREATE DATABASE churn_analysis;
USE churn_analysis;
USE churn_analysis;
SELECT * FROM cleaned_churn_data LIMIT 10;


-- Total Customers
SELECT COUNT(*) AS Total_Customers 
FROM cleaned_churn_data;



SELECT `Churn Label`, COUNT(*) AS Count
FROM cleaned_churn_data
GROUP BY `Churn Label`;


--  Churn Rate Percentage
SELECT 
    `Churn Label`,
    COUNT(*) AS Count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_churn_data), 2) AS Percentage
FROM cleaned_churn_data
GROUP BY `Churn Label`;



-- Contract Type Wise Churn
SELECT Contract, `Churn Label`, COUNT(*) AS Count
FROM cleaned_churn_data
GROUP BY Contract, `Churn Label`
ORDER BY Contract;


-- Senior Citizens Churn
SELECT `Senior Citizen`, `Churn Label`, COUNT(*) AS Count
FROM cleaned_churn_data
GROUP BY `Senior Citizen`, `Churn Label`
ORDER BY `Senior Citizen`;



-- Average Monthly Charges
SELECT `Churn Label`, 
       ROUND(AVG(`Monthly Charges`), 2) AS Avg_Monthly_Charges
FROM cleaned_churn_data
GROUP BY `Churn Label`;



-- Internet Service Wise Churn
SELECT `Internet Service`, `Churn Label`, COUNT(*) AS Count
FROM cleaned_churn_data
GROUP BY `Internet Service`, `Churn Label`
ORDER BY `Internet Service`;


-- Tenure (months) vs Churn
SELECT 
    CASE 
        WHEN `Tenure Months` <= 12 THEN '0-12 Months'
        WHEN `Tenure Months` <= 24 THEN '13-24 Months'
        WHEN `Tenure Months` <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS Tenure_Group,
    `Churn Label`,
    COUNT(*) AS Count
FROM cleaned_churn_data
GROUP BY Tenure_Group, `Churn Label`
ORDER BY Tenure_Group;




--  Payment Method Wise Churn
SELECT `Payment Method`, `Churn Label`, COUNT(*) AS Count
FROM cleaned_churn_data
GROUP BY `Payment Method`, `Churn Label`
ORDER BY `Payment Method`;


-- Gender Wise Churn
SELECT Gender, `Churn Label`, COUNT(*) AS Count
FROM cleaned_churn_data
GROUP BY Gender, `Churn Label`;




USE churn_analysis;
SELECT * FROM cleaned_churn_data;