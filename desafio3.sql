SELECT user_name AS usuario, COUNT(SONGS.song_id) AS qtde_musicas_ouvidas, ROUND(SUM(song_duration_seconds/60), 2) AS total_minutos
FROM SpotifyClone.users AS USERS
JOIN SpotifyClone.history AS HISTORY
ON USERS.user_id = HISTORY.user_id
JOIN SpotifyClone.songs AS SONGS
ON HISTORY.song_id = SONGS.song_id
GROUP BY usuario
ORDER BY usuario;