CREATE DATABASE goldman_sachs; 

use goldman_sachs;

show tables;

select * from customers;
select * from loan;
select * from loan_count_by_year;
select * from loan_with_region;
select * from loan_purposes;
select * from state_region;

-- -------------------------------------------------------- Data Cleaning ---------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------
SET SQL_SAFE_UPDATES = 0;

update customers set emp_title='Unknown'
where emp_title IS NULL;

SELECT * FROM customers;

update customers set emp_length = 'Not Provided'
where emp_length IS NULL;

-- --------------------------------------------------------------------------------------------------------------------------------------------
alter table loan drop column issue_d;

ALTER TABLE loan add column issue_date_clean DATE;

SELECT DISTINCT issue_date from loan;

UPDATE loan
SET issue_date_clean = STR_TO_DATE(CONCAT('01 ', issue_date), '%d %M %Y');

alter table loan drop column issue_date;

ALTER TABLE loan RENAME COLUMN issue_date_clean TO issue_date;

Select * from loan;

-- --------------------------------------------------------------------------------------------------------------------------------------------

-- -----------------------------------------------Querry Executions --------------------------------------------------------------------------

-- 1. Retrieve the number of unique customers by region and their average credit score.

select * from state_region; -- (for customers regions)
select * from loan;         -- (for grades as credit scores not directly provided in the dataset)

SELECT region,COUNT(DISTINCT customer_id) AS unique_customers,avg(grade_score) as 'Avg Credit Score'
from (
      select sr.region, l.customer_id ,
      CASE 
      WHEN l.grade='A' THEN 1
      WHEN l.grade='B' THEN 2
      WHEN l.grade='C' THEN 3
      WHEN l.grade='D' THEN 4
      WHEN l.grade='E' THEN 5
      WHEN l.grade='F' THEN 6
      WHEN l.grade='G' THEN 7
      END AS grade_score
      from state_region as sr
      join loan as l
      on sr.state=l.state ) as sub 
      group by region;

--  Calculate the percentage of approved loans out of total applications to evaluate approval efficiency
select distinct loan_status from loan;

select count(*) from loan;

SELECT 
    COUNT(*) AS total_loans,
    SUM(CASE 
            WHEN loan_status IN ('Fully Paid', 'Current') 
            THEN 1 ELSE 0 
        END) AS performing_loans,
    ROUND(
        SUM(CASE 
                WHEN loan_status IN ('Fully Paid', 'Current') 
                THEN 1 ELSE 0 
            END) * 100.0 / COUNT(*), 
        2
    ) AS performing_rate_percentage
FROM loan;

--  Identify loans with high default risk by flagging applications with low credit scores, lower income, and higher loan amounts.

WITH risk_base AS (
    SELECT 
        l.loan_id,
        l.customer_id,
        c.annual_inc,
        l.grade,
        l.funded_amount,
        AVG(c.annual_inc) OVER () AS avg_income,
        AVG(l.funded_amount) OVER () AS avg_funded
    FROM loan l
    JOIN customers c 
        ON l.customer_id = c.customer_id
)

SELECT *,
    CASE 
        WHEN annual_inc < avg_income
             AND funded_amount > avg_funded
             AND grade IN ('D','E','F','G')
        THEN 'High Default Risk'
        ELSE 'Low / Moderate Risk'
    END AS risk_flag
FROM risk_base;

-- Find the top 5 states with the highest loan approval rates and compare them to their average approved loan amounts 
WITH loan_summary AS (
    SELECT 
        state,
        COUNT(*) AS total_loans,
        SUM(CASE 
                WHEN loan_status = 'Fully Paid' 
                THEN 1 ELSE 0 
            END) AS approved_loans
    FROM loan
    GROUP BY state
),

avg_approved_amount AS (
    SELECT 
        state,
        ROUND(AVG(loan_amount), 2) AS avg_approved_loan_amount
    FROM loan
    WHERE loan_status = 'Fully Paid'
    GROUP BY state
)

SELECT 
    ls.state,
    ls.total_loans,
    ls.approved_loans,
    ROUND((ls.approved_loans * 100.0 / ls.total_loans), 2) AS approval_rate_percentage,
    aa.avg_approved_loan_amount
FROM loan_summary ls
JOIN avg_approved_amount aa 
    ON ls.state = aa.state
ORDER BY approval_rate_percentage DESC
LIMIT 5;

-- . Analyze yearly trends in loan disbursement and identify which loan categories are growing fastest.
WITH yearly_purpose AS (
    SELECT 
        issue_year,
        purpose,
        COUNT(*) AS total_loans
    FROM loan
    GROUP BY issue_year, purpose
)

SELECT 
    issue_year,
    purpose,
    total_loans,
    LAG(total_loans) OVER (PARTITION BY purpose ORDER BY issue_year) AS prev_year_loans,
    
    ROUND(
        (total_loans - LAG(total_loans) OVER (PARTITION BY purpose ORDER BY issue_year))
        / LAG(total_loans) OVER (PARTITION BY purpose ORDER BY issue_year) * 100,
    2) AS growth_percentage

FROM yearly_purpose
ORDER BY purpose, issue_year;

-- Find the average number of loans taken per customer and summarize their repayment history.
WITH loans_per_customer AS (
    SELECT 
        customer_id,
        COUNT(*) AS total_loans
    FROM loan
    GROUP BY customer_id
),

avg_loans AS (
    SELECT 
        ROUND(AVG(total_loans), 2) AS avg_loans_per_customer
    FROM loans_per_customer
),

repayment_summary AS (
    SELECT 
        CASE 
            WHEN loan_status IN ('Fully Paid', 'Current') 
                THEN 'Performing'
            WHEN loan_status IN ('Late (16-30 days)', 'Late (31-120 days)', 'In Grace Period') 
                THEN 'Delinquent'
            WHEN loan_status IN ('Default', 'Charged Off') 
                THEN 'Defaulted'
        END AS repayment_category
    FROM loan
)

SELECT 
    r.repayment_category,
    COUNT(*) AS total_loans,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM loan), 2) AS percentage_share,
    a.avg_loans_per_customer
FROM repayment_summary r
CROSS JOIN avg_loans a
GROUP BY r.repayment_category, a.avg_loans_per_customer;

--  Calculate the average interest rate for loans by category and by region.
select * from loan;

select s.region,l.purpose,round(avg(l.int_rate) * 100, 2) as avg_int_rate_percentage
from loan l join state_region s 
on l.state=s.state
group by l.purpose,s.region;

-- Identify the most common loan purposes (categories) and their associated default rates.

select purpose,sum(case when loan_status='Default'then 1 else 0 End)/count(*)*100 as Default_Rate
from loan 
group by purpose
order by count(*) desc 
limit 1;

SELECT 
    purpose,
        SUM(CASE WHEN loan_status = 'Default' THEN 1 ELSE 0 END) 
        / COUNT(*) * 100 AS default_rate
FROM loan
GROUP BY purpose
ORDER BY COUNT(*) DESC
LIMIT 1;

--  Analyze the correlation between income levels and loan approval rates.
select * from customers;
select * from loan;

with income_category as (select c.customer_id, 
          case when annual_inc<50000 then 'Low'
			when annual_inc BETWEEN 50000 and 100000 then 'Medium'
            Else 'High'
            End as 'Income_Level',l.loan_status 
            from customers c join loan l 
            on c.customer_id=l.customer_id)
Select Income_Level, round(sum(case when loan_status IN ('Fully Paid','Current') then 1 else 0 
                                 end )/count(*)*100,2) as approval_rate_percentage
from income_category 
group by Income_Level
order by approval_rate_percentage desc;

-- List customers who have missed multiple payments and are at higher risk of default
select distinct loan_status from loan;
with risky_loans as (select customer_id,loan_status from loan
                     where loan_status not in ('Fully Paid','Current'))
select customer_id,count(*) as missed_payments from risky_loans 
group by customer_id
having count(*) >=1
order by missed_payments DESC;