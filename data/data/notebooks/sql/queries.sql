SELECT Contract, COUNT(*)
FROM customer_churn
GROUP BY Contract;


'Churn by Contract.'
SELECT Contract, COUNT(*)
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY Contract;

'Churn by Tenure:'
SELECT tenure, COUNT(*)
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY tenure
ORDER BY tenure;

'Top Customer Segments:'
SELECT InternetService, COUNT(*)
FROM customer_churn
GROUP BY InternetService
ORDER BY COUNT(*) DESC;

'Window Functions'
SELECT
    customerID,
    Contract,
    ROW_NUMBER() OVER (
        PARTITION BY Contract
        ORDER BY customerID
    ) AS Row_Num
FROM customer_churn;

'Query 6 – Churn by Payment Method'
SELECT PaymentMethod, COUNT(*)
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY PaymentMethod
ORDER BY COUNT(*) DESC;

'Query 7 – Churn by Gender'
SELECT gender, COUNT(*)
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY gender;


'Query 8 – Churn by Internet Service'
SELECT InternetService, COUNT(*)
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY InternetService;

'Query 9 – Average Monthly Charges by Churn'
SELECT Churn, AVG(MonthlyCharges)
FROM customer_churn
GROUP BY Churn;

'Query 10 – Average Tenure by Churn'
SELECT Churn, AVG(tenure)
FROM customer_churn
GROUP BY Churn;
