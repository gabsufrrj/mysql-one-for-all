SELECT song_name AS nome, COUNT(HISTORY.song_id) AS reproducoes
FROM SpotifyClone.songs AS SONGS
JOIN SpotifyClone.history AS HISTORY
ON SONGS.song_id = HISTORY.song_id
JOIN SpotifyClone.users AS USERS
ON USERS.user_id = HISTORY.user_id
WHERE plan_id = 1 OR plan_id = 4
GROUP BY song_name	
ORDER BY song_name;