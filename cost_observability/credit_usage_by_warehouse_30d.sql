-- Account's credit usage by warehouse in the last 30 days.
SELECT 
  warehouse_id, 
  warehouse_name, 
  SUM(CREDITS_USED) AS total_credit_usage 
FROM 
  snowflake.account_usage.warehouse_metering_history 
WHERE 
  start_time > dateadd(
    day, 
    -30, 
    current_date()
  ) 
GROUP BY 
  warehouse_id, 
  warehouse_name 
ORDER BY 
  total_credit_usage DESC;
