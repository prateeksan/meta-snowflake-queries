-- Organization's total monthly costs for the current year, grouped by account.
SELECT 
  account_name, 
  MONTHNAME(usage_date) as month, 
  SUM(usage) as usage_in_credits, 
  MIN(currency) as currency, 
  ROUND(
    SUM(usage_in_currency), 
    2
  ) as usage_in_currency 
FROM 
  snowflake.organization_usage.usage_in_currency_daily 
WHERE 
  YEAR(usage_date) = YEAR(current_date) 
GROUP BY 
  account_name, 
  month 
ORDER BY 
  month DESC;
