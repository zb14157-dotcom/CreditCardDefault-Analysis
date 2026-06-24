"Added Query 1 - Overall default rate baseline"
-- Overall Default Rate
Select Count(*) AS TotalCustomer,
SUM(`default.payment.next.month`) AS TotalDefaults,
ROUND(AVG(`default.payment.next.month`) * 100,2) AS DefaultRate
FROM schema.uci_credit_card; 
