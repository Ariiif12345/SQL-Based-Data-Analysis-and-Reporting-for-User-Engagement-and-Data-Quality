-- Example: Stored Procedure to generate user engagement metrics
DELIMITER $$

CREATE PROCEDURE GetUserEngagementMetrics()
BEGIN
    SELECT 
        u.username,
        COUNT(p.photo_id) AS total_photos,
        COUNT(DISTINCT pt.tag_id) AS unique_tags_used,
        MAX(p.upload_date) AS last_active
    FROM 
        users u
    JOIN 
        photos p ON u.user_id = p.user_id
    JOIN 
        photo_tags pt ON p.photo_id = pt.photo_id
    GROUP BY 
        u.username
    ORDER BY 
        total_photos DESC
    LIMIT 1000;
END $$

DELIMITER ;

-- Call the procedure
CALL GetUserEngagementMetrics();
