SELECT artist, english_title
FROM views AS v1
WHERE entropy = (
    SELECT MAX(entropy)
    FROM views AS v2
    WHERE v2.artist = v1.artist

)
ORDER BY artist;
