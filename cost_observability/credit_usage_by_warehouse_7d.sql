-- Account's credit usage by warehouse in the last 7 days.
SELECT 
  warehouse_id, 
  warehouse_name, 
  SUM(CREDITS_USED) AS total_credit_usage 
FROM 
  snowflake.account_usage.warehouse_metering_history 
WHERE 
  start_time > dateadd(
    day, 
    -7, 
    current_date()
  ) 
GROUP BY 
  warehouse_id 
ORDER BY 
  total_credit_usage DESC;
