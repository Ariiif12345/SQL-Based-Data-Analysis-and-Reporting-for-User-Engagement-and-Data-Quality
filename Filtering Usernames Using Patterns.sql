-- Example: Filter usernames that do not match a specific pattern, e.g., only allow alphanumeric usernames
SELECT 
    user_id, 
    username
FROM 
    users
WHERE 
    username NOT REGEXP '^[a-zA-Z0-9]+$';
