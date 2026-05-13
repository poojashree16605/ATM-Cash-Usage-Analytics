-- Total Transactions
SELECT COUNT(*) AS Total_Transactions
FROM `atm_cash_usage_dataset (1)`;

-- Total Withdrawal Amount
SELECT SUM(Amount_INR) AS Total_Withdrawal
FROM `atm_cash_usage_dataset (1)`
WHERE Transaction_Type = 'Cash Withdrawal';

-- Top 5 Most Used ATMs
SELECT ATM_ID, COUNT(*) AS Total_Transactions
FROM `atm_cash_usage_dataset (1)`
GROUP BY ATM_ID
ORDER BY Total_Transactions DESC
LIMIT 5;

-- City-wise Transactions
SELECT City, COUNT(*) AS Total_Transactions
FROM `atm_cash_usage_dataset (1)`
GROUP BY City
ORDER BY Total_Transactions DESC;

-- Failed Transactions
SELECT COUNT(*) AS Failed_Transactions
FROM `atm_cash_usage_dataset (1)`
WHERE Response_Code != 0;