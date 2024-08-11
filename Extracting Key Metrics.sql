-- 50 Most Active Users
SELECT 
    u.username, 
    COUNT(p.photo_id) AS photo_count
FROM 
    users u
JOIN 
    photos p ON u.user_id = p.user_id
GROUP BY 
    u.username
ORDER BY 
    photo_count DESC
LIMIT 50;

-- Top 10 Popular Tags
SELECT 
    t.tag_name, 
    COUNT(pt.photo_id) AS tag_count
FROM 
    tags t
JOIN 
    photo_tags pt ON t.tag_id = pt.tag_id
GROUP BY 
    t.tag_name
ORDER BY 
    tag_count DESC
LIMIT 10;

-- Peak Registration on Sundays
SELECT 
    registration_day, 
    COUNT(user_id) AS registrations
FROM 
    UserPhotoTags
GROUP BY 
    registration_day
ORDER BY 
    registrations DESC
LIMIT 1;
