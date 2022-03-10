-- Connect to database
postgresql:///international_debt

-- Preview international_debt table
SELECT * FROM international_debt
LIMIT 10;

-- How many distinct countries are in the table?
SELECT 
    COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;

-- What are the different debt indicators?
SELECT 
    DISTINCT indicator_code AS distinct_debt_indicators,
    indicator_name AS distinct_debt_desc
FROM international_debt
ORDER BY distinct_debt_indicators;

-- What is the total amount of debt (in millions, USD) owed by all of the countries in the dataset?
SELECT 
    ROUND(SUM(debt)/1000000, 2) AS total_debt
FROM international_debt;

-- Which countries have the highest debt?
SELECT 
    country_name, 
    SUM(debt) as total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 10;

-- On average, how much debt does a country owe per each debt indicator?
SELECT 
    indicator_code AS debt_indicator,
    indicator_name,
    AVG(debt) AS average_debt
FROM international_debt
GROUP BY debt_indicator, indicator_name
ORDER BY average_debt DESC
LIMIT 10;

-- The indicator 'DT.AMT.DLXF.CD' refers to principal repayments on long-term, external debts. Which country 
-- owes the greatest amount of debt with regard to this category?
SELECT 
    country_name, 
    indicator_name
FROM international_debt
WHERE debt = (SELECT 
                 MAX(debt)
             FROM international_debt
             WHERE indicator_code = 'DT.AMT.DLXF.CD');

--What is the most common indicator in which countries owe their debt?
SELECT 
    indicator_code, 
    COUNT(indicator_code) AS indicator_count
FROM international_debt
GROUP BY indicator_code
ORDER BY indicator_count DESC, indicator_code DESC
LIMIT 20;

--What is the maximum amount of debt each country has?
SELECT 
    country_name, 
    MAX(debt) AS maximum_debt,
    indicator_name
FROM international_debt
GROUP BY country_name, indicator_name
ORDER BY maximum_debt DESC
LIMIT 10;