SELECT title 
FROM episodes 
WHERE (season, episode_in_season) IN (
    SELECT season, MAX(episode_in_season) 
    FROM episodes 
    GROUP BY season
);

