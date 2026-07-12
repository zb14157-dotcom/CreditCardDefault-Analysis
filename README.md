# Credit Card Default Analysis
 
Analysis of 30,000 credit card customers to identify demographic and behavioral patterns that predict default risk, using SQL for data exploration and Tableau for visualization.
 
## Business Question
 
Which demographic and behavioral factors (age, sex, education, marital status, credit limit, and repayment history) are most strongly associated with a customer defaulting on their next credit card payment?
 
## Dataset
 
- **Source:** [UCI Machine Learning Repository — Default of Credit Card Clients Dataset](https://archive.ics.uci.edu/dataset/350/default+of+credit+card+clients) (also available on [Kaggle](https://www.kaggle.com/datasets/uciml/default-of-credit-card-clients-dataset))
- **Size:** 30,000 records, 25 variables
- **Coverage:** Credit card clients in Taiwan, 2005
- **Key fields:**
  - `LIMIT_BAL` — amount of credit given (NT dollar)
  - `SEX`, `EDUCATION`, `MARRIAGE`, `AGE` — demographic attributes
  - `PAY_0`–`PAY_6` — repayment status for the past 6 months
  - `BILL_AMT1`–`BILL_AMT6` — monthly bill statement amounts
  - `PAY_AMT1`–`PAY_AMT6` — monthly payment amounts
  - `default payment next month` — target variable (1 = default, 0 = no default)
## Tools
 
- **MySQL Workbench** — data cleaning, exploration, and aggregation
- **SQL techniques used:** `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `CASE WHEN`, `JOIN`s, string functions, aggregate functions
- **Tableau** — visualization of default rates across demographic and behavioral segments
## Repository Structure
 
```
CreditCardDefault-Analysis/
├── data/     # Raw and/or cleaned dataset files
├── sql/      # SQL scripts for data exploration and analysis
└── README.md
```
 
## Analysis Approach
 
1. **Data setup** — loaded the dataset into a MySQL schema and reviewed data types, null values, and category codes.
2. **Data cleaning** — standardized categorical fields (e.g., recoding undocumented values in `EDUCATION` and `MARRIAGE`) and checked for outliers in bill/payment amounts.
3. **Exploratory analysis** — used `GROUP BY` and `HAVING` to calculate default rates across segments (age bands, education level, marital status, sex).
4. **Behavioral analysis** — used `CASE WHEN` logic to bucket repayment history (`PAY_0`–`PAY_6`) into risk categories and joined against demographic segments to compare default rates.
5. **Visualization** — exported summary tables to Tableau to build dashboards highlighting the highest-risk customer segments.
## Key Findings
 
*(which segment had the highest default rate, and by how much.)*
 
## How to Reproduce
 
1. Import `data/` into a MySQL schema.
2. Run the scripts in `sql/` in order to reproduce the cleaning and analysis steps.
3. *(Add Tableau public link here if you publish the dashboard.)*
## Author
 
Zach Baker — CIS , Grambling State University
