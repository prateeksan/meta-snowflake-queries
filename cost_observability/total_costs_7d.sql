-- Total organization costs for the past 7 days, grouped by account.
SELECT 
  account_name, 
  SUM(usage) as usage_in_credits, 
  MIN(currency) as currency, 
  ROUND(
    SUM(usage_in_currency), 
    2
  ) as usage_in_currency 
FROM 
  snowflake.organization_usage.usage_in_currency_daily 
WHERE 
  usage_date > dateadd(
    day, 
    -7, 
    current_date()
  ) 
GROUP BY 
  account_name 
ORDER BY 
  usage_in_currency DESC;
