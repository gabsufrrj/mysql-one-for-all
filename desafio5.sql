SELECT song_name AS cancao, COUNT(SONGS.song_id) AS reproducoes
FROM SpotifyClone.songs AS SONGS
JOIN SpotifyClone.history AS HISTORY
ON SONGS.song_id = HISTORY.song_id
GROUP BY song_name
ORDER BY reproducoes DESC, cancao
LIMIT 2;