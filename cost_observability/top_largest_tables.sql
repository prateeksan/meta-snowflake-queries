-- Database's 100 largest tables by total billable bytes.
SELECT 
  table_catalog, 
  table_schema, 
  table_name, 
  id, 
  clone_group_id, 
  SUM(active_bytes) AS total_active_bytes, 
  SUM(time_travel_bytes) as total_time_travel_bytes, 
  SUM(failsafe_bytes) as total_failsafe_bytes, 
  SUM(retained_for_clone_bytes) as total_retained_for_clone_bytes, 
  (
    total_active_bytes + total_time_travel_bytes + total_failsafe_bytes + total_retained_for_clone_bytes
  ) as total_billable_bytes 
FROM 
  table_storage_metrics 
GROUP BY 
  table_catalog, 
  table_schema, 
  table_name, 
  id, 
  clone_group_id 
ORDER BY 
  total_billable_bytes DESC 
LIMIT 
  100;
