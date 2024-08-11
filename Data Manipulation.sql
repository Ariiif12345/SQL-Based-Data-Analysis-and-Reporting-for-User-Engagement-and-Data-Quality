-- Assuming we have tables: users, photos, and tags

-- Example: Join users with their photos and tags, manipulating dates to extract day of the week
CREATE VIEW UserPhotoTags AS
SELECT 
    u.user_id,
    u.username,
    p.photo_id,
    p.upload_date,
    t.tag_name,
    DAYNAME(u.registration_date) AS registration_day,
    u.registration_date
FROM 
    users u
JOIN 
    photos p ON u.user_id = p.user_id
JOIN 
    photo_tags pt ON p.photo_id = pt.photo_id
JOIN 
    tags t ON pt.tag_id = t.tag_id;
