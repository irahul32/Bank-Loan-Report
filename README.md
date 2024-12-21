<div align="center">

# Bank Loan Data Analysis

This project utilizes **SQL** and **POWER BI** to analyze a dataset of  bank loan data for the year 2021, generating a Power BI visualization report that consists of three dashboards: **Summary**, **Overview**, and **Details**.

🔗 [➥ Live Demo](your-live-demo-link-here)

---

### Dashboard Demo Screenshots

<table>
    <tr>
        <td><img src="https://github.com/irahul32/Bank-Loan-Report/blob/main/Sample%20screenshots/summary.png" alt="Summary Dashboard" width="300"/></td>
        <td><img src="https://github.com/irahul32/Bank-Loan-Report/blob/main/Sample%20screenshots/overview.png" alt="Overview Dashboard" width="300"/></td>
        <td><img src="https://github.com/irahul32/Bank-Loan-Report/blob/main/Sample%20screenshots/details.png" alt="Details Dashboard" width="300"/></td>
    </tr>
    <tr>
        <td align="center"><b>Summary Dashboard</b></td>
        <td align="center"><b>Overview Dashboard</b></td>
        <td align="center"><b>Details Dashboard</b></td>
    </tr>
</table>

---

</div>

# Tech Stack & Process involved in building the project
**Step 1**: Collect and review the dataset, identifying the project goals and the relevant **Key Performance Indicators (KPIs)** to track.
**Step 2** (Exploration Process): Load the dataset into the **MySQL Database** for storage and processing.
**Step 3** (Transformation Process): Analyze the data, clean it, and extract the required metrics based on the identified KPIs.
**Step 4**: Handle null values, missing entries, and errors using **MySQL or Excel**, ensuring the data aligns with the project requirements.
**Step 5** (Loading Process): Load the cleaned and transformed data into **Power BI** for visualization and reporting.
**Step 6**: Design and create an interactive dashboard in **Power BI**, focusing on effectively representing the KPIs and meeting project requirements.

# Explanation of Terms Used in the Report
**MTD (Month-to-Date):** Refers to the cumulative total for the current month up to the current date.

**MoM (Month-over-Month):** Represents the percentage or absolute change compared to the previous month.

**DTI (Debt-to-Income Ratio):** DTI measures the borrower's debt burden relative to income. It gauges the borrower's capacity to take on additional debt.

**Good Loan:** This category includes loans with a loan status of 'Fully Paid' and 'Current.'

**Bad Loan:** This category specifically includes loans with a loan status of 'Charged Off.'

**Grade:** Grade represents a risk classification assigned to the loan based on creditworthiness. Higher grades signify lower risk. Sub Grade refines the risk assessment within a grade, providing additional risk differentiation.

**Verification Status:** Verification Status indicates whether the borrower's financial information has been verified. It assesses data accuracy.

**Loan Status:** Loan Status indicates the current state of the loan (e.g., fully paid, current, charged off). It tracks loan performance.
