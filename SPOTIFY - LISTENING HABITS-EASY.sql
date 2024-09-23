-- You're tasked with analyzing a Spotify-like dataset that captures user listening habits.
-- For each user, calculate the total listening time and the count of unique songs they've listened to. In the database duration values are displayed in seconds. Round the total listening duration to the nearest whole minute.

CREATE TABLE listening_habits (
    user_id INT,
    song_id INT,
    listen_duration FLOAT
);

INSERT INTO listening_habits (user_id, song_id, listen_duration) VALUES
(101, 1, 480),  
(101, 2, 240),   
(102, 1, 300),   
(102, 2, 180),   
(103, 3, 360),   
(104, 4, 360),   
(104, 5, 240),   
(105, 6, 240),   
(105, 7, 120); 

-- Solution: 
-- SELECT 
--     user_id,
--     ROUND(SUM(listen_duration) / 60) AS total_listen_duration, 
--     COUNT(DISTINCT song_id) AS unique_song_count
-- FROM 
--     listening_habits
-- GROUP BY 
--     user_id;
