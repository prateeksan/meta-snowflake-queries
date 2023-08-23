-- Account's top 100 users by execution time in the last 7 days.
SELECT 
  SUM(execution_time) as total_usage_time, 
  user_name 
FROM 
  snowflake.account_usage.query_history 
WHERE 
  start_time > dateadd(
    day, 
    -7, 
    current_date()
  ) 
GROUP BY 
  user_name 
ORDER BY 
  total_usage_time DESC 
LIMIT 
  100;
