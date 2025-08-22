
WITH customer_last_purchase as(
	SELECT
		customerkey,
		cleaned_name,
		orderdate,
		row_number() over(PARTITION BY customerkey ORDER BY orderdate DESC ) AS rn,
		first_purchase_date,
		cohort_year
	FROM
		cohort_analysis

), churned_customers AS (
	SELECT 
		customerkey,
		cleaned_name,
		orderdate AS last_purchase_date,
		CASE 
			WHEN orderdate < (SELECT max(orderdate)FROM sales)-INTERVAL '6 months' THEN 'churned'
			ELSE 'active'
		END AS customer_status,
		cohort_year 
		
	FROM 
		customer_last_purchase 
	WHERE rn=1
		AND first_purchase_date < (SELECT max(orderdate)FROM sales)- INTERVAL '6 months'
)
SELECT 
	cohort_year, 
	customer_status,
	count(customerkey) AS num_customers,
	sum(count(customerkey)) OVER (PARTITION BY cohort_year ) AS total_customers,
	count(customerkey)/sum(count(customerkey)) OVER (PARTITION BY cohort_year) AS status_percentage
FROM 
	churned_customers
GROUP BY
cohort_year,
customer_status
