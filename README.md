# Sales Analysis

## Overview
Analysis of customer behaviour, retention and lifetime value for a e-commerce company to imporve the customer retention and minimize revenue.

## Business Questions
1. **Customer Segmentation** Who are our most valuable customers?
2. **Cohort Analysis** How do different customer groups generate revenue?
3. **Retention Analysis** Which customers haven't purcahsed recently?

## Analysis approach

### 1. Customer Segmentation Analysis
- Categorized Customers based on total lifetime value(LTV)
- Assigned customers to high, mid and low value segments
- Calculated key metrics: total revenue

Query: [1_customer_segmentation.sql](/1_customer_segmentation.sql)


**Key Findings**
- High value segment (25% of customers) drives 66% of revenue
- Mid value(50% of customers) segment generates 32% of revenue
- Low value segment(25% of customers) accounts for 2% of revenue

### 2. Cohort Analysis
- Tracked revenue and customer count per cohorts
- Cohorts were grouped by year of first purchase
- Analyzed customer retention at a cohort level

Query:[2_cohort_analysis.sql](/2_cohort_analysis.sql)

**Key Findings**
- Revenue per customer shows an alarming decreasing trend over time
- 2022-2024 cohorts are consistently performing worse than earlier cohorts
- Although net revenue is increasing, this is likely due to a larger customer base, which is not reflective of customer value 

### 3.Customer Retention
Query: [3_retention_analysis.sql](/3_retention_analysis.sql)

- Identified customers at risk of churning
- Analyzed last purchase patterns
- Calculated customer specific metrics

**Key findings**
- Cohort churn stabilizes at 90% after 2-3 years, indicating a predictable long term retention pattern
- Retention rates are consistently low across all cohorts, suggesting retention issues are systemic rather than specific to certain years
- Newer cohorts show similar churn trajectories, signalling that without intervention, future cohorts will follow the same pattern

## Strategic Recommendation 
1. **Customer Value Optimization** 
- Launch Vip program for high value customers
- Create a personalized upgrade path for mid value segment
- Design price sensitive promotions for low value segment to increase purchase frequency

2. **Cohort performance strategy**
- Target 2022-24 cohorts with personalized re-engagement offers
- Implement loyalty programs to stabilize revenue fluctuations
- Apply successful strategies from high spending 2016-18 cohorts to newer years.

3. **Retention and churn prevention**
- Strengthen first 1-2 year engagement with onboarding incentives and loyalty rewards.
- Focus on targeted win back campaigns for high value churned customers 
- Implement proactive intervention system for at risk customers before they lapse

## Technical Details
- Database: PostgreSQL
- Analysis Tools: PostgreSQL

