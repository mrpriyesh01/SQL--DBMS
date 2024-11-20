WITH each_oly AS (
    SELECT 
        Games, 
        COUNT(DISTINCT Sport) AS no_of_sports  -- Count distinct sports, not games
    FROM olympics
    GROUP BY Games
    ORDER BY no_of_sports desc
)
SELECT Games, no_of_sports
FROM each_oly;
