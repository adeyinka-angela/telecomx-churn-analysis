
-- TeleComX Customer Churn Analysis
-- SQL Analysis Script
-- Analyst: Adedayo Adeyinka | June 2026

-- Q1: Overall Churn Rate
SELECT Churn, COUNT(*) AS customer_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers), 2) AS percentage
FROM customers GROUP BY Churn ORDER BY Churn DESC;

-- Q2: Churn by Contract Type
SELECT Contract, COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers GROUP BY Contract ORDER BY churn_rate_pct DESC;

-- Q3: Churn by Payment Method
SELECT PaymentMethod, COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers GROUP BY PaymentMethod ORDER BY churn_rate_pct DESC;

-- Q4: Churn by Internet Service
SELECT InternetService, COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers GROUP BY InternetService ORDER BY churn_rate_pct DESC;

-- Q5: Churn by Tenure Band
SELECT CASE WHEN tenure <= 12 THEN '0-12 months'
    WHEN tenure <= 24 THEN '13-24 months'
    WHEN tenure <= 48 THEN '25-48 months'
    ELSE '49+ months' END AS tenure_band,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers GROUP BY tenure_band ORDER BY churn_rate_pct DESC;

-- Q6: Charges and Tenure by Churn Status
SELECT Churn, ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(AVG(tenure), 1) AS avg_tenure_months,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges
FROM customers GROUP BY Churn;

-- Q7: Senior Citizen Churn
SELECT CASE WHEN SeniorCitizen = 1 THEN 'Senior' ELSE 'Non-Senior' END AS customer_type,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers GROUP BY SeniorCitizen;

-- Q8: Top 5 Highest Risk Segments
SELECT Contract, InternetService, PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers GROUP BY Contract, InternetService, PaymentMethod
HAVING total_customers > 50 ORDER BY churn_rate_pct DESC LIMIT 5;
