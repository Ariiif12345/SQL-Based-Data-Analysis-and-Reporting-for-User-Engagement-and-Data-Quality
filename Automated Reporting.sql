-- Stored Procedure for Top 10 Popular Hashtags
DELIMITER $$

CREATE PROCEDURE GetTop10PopularTags()
BEGIN
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
END $$

DELIMITER ;

-- Call the procedure
CALL GetTop10PopularTags();
