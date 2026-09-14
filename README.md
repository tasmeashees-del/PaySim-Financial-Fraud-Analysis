# PaySim Financial Fraud Analysis

## 📌 Project Overview

This project analyzes financial transactions from the PaySim synthetic mobile-money dataset to identify fraudulent transaction patterns, understand transaction behavior, and generate risk-related business insights.

The analysis follows an end-to-end data analytics workflow using Python, PostgreSQL, SQL, and Power BI.

## 🎯 Objectives

- Analyze transaction patterns and transaction types
- Identify fraudulent transactions
- Measure the overall fraud rate
- Analyze fraud by transaction type
- Compare fraudulent and non-fraudulent transaction amounts
- Analyze sender and destination balance changes
- Perform SQL-based transaction and fraud analysis
- Build interactive Power BI dashboards
- Generate actionable business insights

## 🛠️ Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook
- PostgreSQL
- SQL
- Power BI
- GitHub

## 🔄 Project Workflow

Python / Pandas  
↓  
Data Cleaning & Exploration  
↓  
Exploratory Data Analysis  
↓  
PostgreSQL & SQL Analysis  
↓  
Power BI Dashboard  
↓  
Business Insights & Recommendations

## 📊 Dataset

The project uses a 10,000-transaction subset of the PaySim synthetic financial transaction dataset.

Key columns include:

- `step` — Transaction time step
- `type` — Transaction type
- `amount` — Transaction amount
- `oldbalanceOrg` — Sender's balance before transaction
- `newbalanceOrig` — Sender's balance after transaction
- `oldbalanceDest` — Destination balance before transaction
- `newbalanceDest` — Destination balance after transaction
- `isFraud` — Actual fraud indicator
- `isFlaggedFraud` — System-generated fraud flag

## 🔍 Key Findings

| Metric | Result |
|---|---:|
| Total Transactions | 10,000 |
| Total Transaction Amount | 1.04B |
| Average Transaction Amount | 103.55K |
| Fraudulent Transactions | 68 |
| Non-Fraudulent Transactions | 9,932 |
| Fraud Rate | 0.68% |
| Total Fraud Amount | 36.28M |
| Most Prominent Fraud Type | CASH_OUT |
| System-Flagged Fraud | 0 |

### Important Insights

- Fraudulent transactions represent a small proportion of total transactions.
- CASH_OUT is the most prominent fraudulent transaction type.
- Fraudulent transactions have a higher average transaction amount than non-fraudulent transactions.
- TRANSFER represents the largest share of transaction amount.
- Actual fraud and system-flagged fraud show different patterns in the analyzed dataset.
- Transaction amount, transaction type, balance changes, and transaction timing can be useful signals for fraud analysis.

## 📈 Power BI Dashboards

### Dashboard 1 — PaySim Overview

The overview dashboard provides a high-level view of transaction volume, transaction amounts, transaction types, fraud distribution, and balance information.

### Dashboard 2 — PaySim Risk Analysis

The risk dashboard focuses on fraud detection, fraud by transaction type, fraud trends, transaction amounts, and actual versus system-flagged fraud.

## 💡 Business Recommendations

- Monitor CASH_OUT transactions more closely.
- Investigate unusually high-value transactions.
- Combine transaction amount, type, balance changes, and transaction timing for risk monitoring.
- Compare actual fraud with system-generated fraud flags to evaluate detection effectiveness.
- Develop a machine-learning fraud-risk model as a future enhancement.

## 📂 Project Files

- `paysim.ipynb` — Python analysis and EDA
- `financial fraud analyst sql2.sql` — PostgreSQL/SQL analysis
- `Paysim fraud project.pbix` — Power BI dashboard
- `Screenshot 2026-09-14 071250.png` — Dashboard screenshot
- `Screenshot 2026-09-14 075716.png` — Dashboard screenshot

## 🚀 Future Scope

- Build a machine-learning fraud detection model
- Engineer additional transaction-risk features
- Evaluate model performance using precision, recall and F1-score
- Develop real-time fraud monitoring concepts
- Extend analysis to larger transaction datasets

## 👩‍💻 Author

**Tasmiya Shees**

B.Sc. Mathematics | Aspiring Data Analyst & Data Scientist
