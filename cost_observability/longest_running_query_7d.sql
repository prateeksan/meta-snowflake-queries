-- Account's longest running queries in the last 7 days.
SELECT 
  query_text, 
  execution_time, 
  user_name 
FROM 
  snowflake.account_usage.query_history 
WHERE 
  start_time > dateadd(
    day, 
    -7, 
    current_date()
  ) 
ORDER BY 
  execution_time DESC 
LIMIT 
  100;
