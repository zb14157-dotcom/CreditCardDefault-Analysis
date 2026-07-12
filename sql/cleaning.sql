-- Check For Nulls
SELECT Count(*) - Count(ID) AS ID_Nulls,
		Count(*) - Count(LIMIT_BAL) AS LIMIT_BAL_Nulls,
        Count(*) - Count(SEX) AS SEX_Nulls,
        Count(*) - Count(EDUCATION) AS EDUCATION_Nulls,
        Count(*) - Count(MARRIAGE) AS MARRIAGE_Nulls,
        Count(*) - Count(AGE) AS AGE_Nulls,
        Count(*) - Count(PAY_0) AS PAY_0_Nulls,
        Count(*) - Count(PAY_2) AS PAY_2_Nulls,
        Count(*) - Count(PAY_3) AS PAY_3_Nulls,
        Count(*) - Count(PAY_4) AS PAY_4_Nulls,
        Count(*) - Count(PAY_5) AS PAY_5_Nulls,
        Count(*) - Count(PAY_6) AS PAY_6_Nulls,
        Count(*) - Count(BILL_AMT1) AS BILL_AMT1_Nulls,
        Count(*) - Count(BILL_AMT2) AS BILL_AMT2_Nulls,
        Count(*) - Count(BILL_AMT3) AS BILL_AMT3_Nulls,
        Count(*) - Count(BILL_AMT4) AS BILL_AMT4_Nulls,
        Count(*) - Count(BILL_AMT5) AS BILL_AMT5_Nulls,
        Count(*) - Count(BILL_AMT6) AS BILL_AMT6_Nulls,
        Count(*) - Count(PAY_AMT1) AS PAY_AMT1_Nulls,
        Count(*) - Count(PAY_AMT2) AS PAY_AMT2_Nulls,
        Count(*) - Count(PAY_AMT3) AS PAY_AMT3_Nulls,
        Count(*) - Count(PAY_AMT4) AS PAY_AMT4_Nulls,
        Count(*) - Count(PAY_AMT5) AS PAY_AMT5_Nulls,
        Count(*) - Count(PAY_AMT6) AS PAY_AMT6_Nulls
FROM schema.uci_credit_card;
-- Check for duplicates
Select ID, Count(*) AS DuplicateCount
From schema.uci_credit_card
Group BY ID
Having Count(*) > 1;
-- Checking Range of AGE LIMIT_BAL and BILL_AMT1
Select MIN(AGE) AS MinAge,
MAX(AGE) AS MaxAge,
AVG(AGE) AS AvgAGE
From schema.uci_credit_card;

Select MIN(LIMIT_BAL) AS MinLimit,
MAX(LIMIT_BAL) AS MaxLimit,
AVG(LIMIT_BAL) AS AvgLimit
From schema.uci_credit_card;

Select MIN(BILL_AMT1) AS MinBill,
MAX(BILL_AMT1) AS MaxBill,
AVG(BILL_AMT1) AS AvgBill
From schema.uci_credit_card;
-- Overall Default Rate
Select Count(*) AS TotalCustomer,
SUM(`default.payment.next.month`) AS TotalDefaults,
ROUND(AVG(`default.payment.next.month`) * 100,2) AS DefaultRate
FROM schema.uci_credit_card; 
