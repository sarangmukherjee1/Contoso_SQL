SELECT
    cohort_year,
    sum(total_net_revenue) as total_revenue,
    count(DISTINCT customerkey) as total_customers,
    sum(total_net_revenue)/ count(DISTINCT customerkey) as customer_revenue
FROM
    cohort_analysis
WHERE orderdate= first_purchase_date
GROUP BY
cohort_year
