-- Example: Remove any trailing spaces or special characters from URLs
UPDATE 
    photos
SET 
    url = TRIM(BOTH ' ' FROM url);
