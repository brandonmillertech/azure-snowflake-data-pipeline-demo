-- Database Administration and Performance Tuning Reference (DP-300 Module)
-- Query metrics and warehouse optimization snippet

SHOW WAREHOUSES;
SELECT 
    QUERY_ID,
    QUERY_TEXT,
    EXECUTION_STATUS,
    TOTAL_ELAPSED_TIME
FROM TABLE(INFORMATION_SCHEMA.QUERY_HISTORY(RESULT_LIMIT => 10))
ORDER BY START_TIME DESC;
