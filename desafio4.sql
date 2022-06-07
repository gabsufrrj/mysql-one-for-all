SELECT user_name AS usuario, IF (MAX(YEAR(reprodution_date)) = '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario 
FROM SpotifyClone.users AS USERS
JOIN SpotifyClone.history AS HISTORY
ON USERS.user_id = HISTORY.user_id
GROUP BY usuario
ORDER BY usuario;