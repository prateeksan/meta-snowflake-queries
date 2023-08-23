-- Account's 100 most run queries by total execution time in the last 30 days, and the user who ran them most.
SELECT 
  query_text, 
  SUM(execution_time) as total_usage_time, 
  MODE(user_name) most_run_by_user 
FROM 
  snowflake.account_usage.query_history 
WHERE 
  start_time > dateadd(
    day, 
    -30, 
    current_date()
  ) 
GROUP BY 
  query_text 
ORDER BY 
  total_usage_time DESC;
LIMIT 
  100;
