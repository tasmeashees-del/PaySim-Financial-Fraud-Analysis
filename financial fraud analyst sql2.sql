

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
    step INTEGER,
    type VARCHAR(20),
    amount NUMERIC(18,2),
    nameOrig VARCHAR(50),
    oldbalanceOrg NUMERIC(18,2),
    newbalanceOrig NUMERIC(18,2),
    nameDest VARCHAR(50),
    oldbalanceDest NUMERIC(18,2),
    newbalanceDest NUMERIC(18,2),
    isFraud INTEGER,
    isFlaggedFraud INTEGER
);   

 --TOTAL NUMBER OF TRANSACTION
 SELECT COUNT(*) AS total_rows
FROM transactions;
--TOTAL AMOUNT OF TRANSACTION
 SELECT SUM(amount) AS total_amount
FROM transactions;
--avg transaction amount
 SELECT avg(amount) AS total_amount
FROM transactions;
-- min transaction amount
 SELECT MIN(amount) AS MINIMUM_amount
FROM transactions;
--max transaction amount
 SELECT MAX(amount) AS MAXIMUM_amount
FROM transactions;
--different transaction type
SELECT DISTINCT type
FROM transactions;
--total money in each transaction
SELECT 
    type,
    COUNT(*) AS transaction_count
FROM transactions
GROUP BY type
ORDER BY transaction_count DESC;
--how much transation in each type
SELECT 
    type,
    SUM(AMOUNT) AS TOTAL_AMOUNT
FROM transactions
GROUP BY type
ORDER BY TOTAL_AMOUNT DESC;
--avg moneyin each type
SELECT 
    type,
    AVG(AMOUNT) AS TOTAL_AMOUNT
FROM transactions
GROUP BY type
ORDER BY TOTAL_AMOUNT DESC;
--how much transaction is fraud
SELECT COUNT(*) AS fraud_transactions
FROM transactions
WHERE isFraud = 1;
--how much transaction is not fraud
SELECT COUNT(*) AS fraud_transactions
FROM transactions
WHERE isFraud = 0;
--how many fraud transaction in each type SELECT 
SELECT
   type,
    COUNT(*) AS FRAUD_COUNT
FROM transactions
WHERE ISFRAUD=1
GROUP BY type
ORDER BY FRAUD_COUNT DESC;
--how much transaction is frAUD
SELECT SUM(amount) AS total_fraud_amount
FROM transactions
WHERE isFraud = 1;
--avg money in each fraud transaction 
SELECT AVG(amount) AS total_fraud_amount
FROM transactions
WHERE isFraud = 1;
--what percentage is fraudlent
SELECT 
    ROUND(
        100.0 * SUM(CASE WHEN isFraud = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_percentage
FROM transactions;
--what is old sender balance
SELECT SUM(oldbalanceOrg) AS total_old_balance
FROM transactions;
--what is new sender balance
SELECT SUM(newbalanceOrig) AS total_old_balance
FROM transactions;
--difference btw both balance
SELECT 
nameorig,
  oldbalanceorg,
  newbalanceorig,
  oldbalanceorg-newbalanceorig as balance_difference
FROM transactions;
--what is a avg balance difference
SELECT 
    AVG(oldbalanceOrg - newbalanceOrig) AS average_balance_difference
FROM transactions;
--total fraud amount of transaction type
SELECT 
    type,
    SUM(amount) AS fraud_amount
FROM transactions
WHERE isFraud = 1
GROUP BY type
ORDER BY fraud_amount DESC;
--find the top10 highest transaction
SELECT *
FROM transactions
ORDER BY amount DESC
LIMIT 10;
-- Find the top 10 highest-value fraudulent transactions
SELECT *
FROM transactions
WHERE isFraud = 1
ORDER BY amount DESC
LIMIT 10;
--How many transactions were flagged by the system
SELECT COUNT(*) AS flagged_transactions
FROM transactions
WHERE isFlaggedFraud = 1;
--Compare actual fraud with system-flagged fraud
SELECT
    isFraud,
    isFlaggedFraud,
    COUNT(*) AS transaction_count
FROM transactions
GROUP BY isFraud, isFlaggedFraud
ORDER BY isFraud, isFlaggedFraud;