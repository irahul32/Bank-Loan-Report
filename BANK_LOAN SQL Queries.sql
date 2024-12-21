select * from bank_loan_data;

# Total Loan Applications
SELECT  COUNT(id) AS Total_loan_application FROM bank_loan_data;

# MTD Loan Applications
SELECT  COUNT(id) AS MTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date)=(SELECT MAX(MONTH(issue_date)) from bank_loan_data) AND YEAR(issue_date)= (SELECT MAX(YEAR(issue_date)) from bank_loan_data);

# PMTD Loan Applications
SELECT  COUNT(id) AS PMTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date)=(SELECT MAX(MONTH(issue_date)) from bank_loan_data) -1
AND YEAR(issue_date)= (SELECT MAX(YEAR(issue_date)) from bank_loan_data);

# Total Funded Amount
SELECT SUM(loan_amount) as Total_funded_amount FROM bank_loan_data;

# MTD Total Funded Amount
SELECT SUM(loan_amount) as MTD_Total_funded_amount FROM bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

# PMTD Total Funded Amount
SELECT SUM(loan_amount) as PMTD_Total_funded_amount FROM bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

# Total Amount Received
SELECT SUM(total_payment) as Total_Amount_Received FROM bank_loan_data;

# MTD Total Amount Received
SELECT SUM(total_payment) as MTD_Total_Amount_Received FROM bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

# PMTB Total Amount Received
SELECT SUM(total_payment) as PMTD_Total_Amount_Received FROM bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

# Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Interest_Rate FROM bank_loan_data;

# MTD Average Interest Rate
SELECT AVG(int_rate)*100 AS MTD_Avg_Interest_Rate FROM bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

# PMTD Average Interest Rate
SELECT AVG(int_rate)*100 AS PMTD_Avg_Interest_Rate FROM bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

# Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan_data;

# MTD Avg DTI
SELECT AVG(int_rate)*100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

# PMTD Avg DTI
SELECT AVG(int_rate)*100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

# Good Loan Percentage
SELECT 
	(COUNT(CASE WHEN loan_status="Fully Paid" OR loan_status="Current" THEN id END)*100)
    /
    COUNT(id) AS Good_loan_percentage
FROM bank_loan_data;

#Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status="Fully Paid" OR loan_status="Current";

# Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

# Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

# Bad Loan Percentage
SELECT 
   (COUNT(CASE WHEN loan_status="Charged Off" THEN id END)*100)
   /
   COUNT(id) AS Bad_loan_percentage
FROM bank_loan_data;

# Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status="Charged Off" ;

# Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off';

# Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off';

# LOAN STATUS
SELECT 
	loan_status,
    COUNT(id) AS Loan_Count,
    SUM(total_payment) AS Total_amount_received,
    SUM(loan_amount) AS Total_funded_amount,
    AVG(int_rate)*100 AS Interest_rate,
    AVG(dti)*100 AS DTI
FROM bank_loan_data
GROUP BY loan_status;

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status;

# MONTH
SELECT 
	MONTH(issue_date) as Month_Number,
	MONTHNAME(issue_date) AS Month_Name,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY MONTH(issue_date),MONTHNAME(issue_date)
ORDER BY MONTH(issue_date);

# State
SELECT 
	address_state as State,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state;

#Term
SELECT 
	term,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY term
ORDER BY term;

# Employee Length
SELECT 
	emp_length AS Employee_Length,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length;

# Purpose
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose;

# Home Ownership
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership;

