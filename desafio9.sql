SELECT COUNT(user_name) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS USERS
INNER JOIN SpotifyClone.history AS HISTORY
ON HISTORY.user_id = USERS.user_id
WHERE user_name = 'Bill';