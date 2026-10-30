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
