SELECT artist_name AS artista, album_name AS album, COUNT(SEGUIDORES.artist_id) AS seguidores
FROM SpotifyClone.artists AS ARTISTS
JOIN SpotifyClone.albuns AS ALBUNS
ON ARTISTS.artist_id = ALBUNS.artist_id
JOIN SpotifyClone.artist_has_users AS SEGUIDORES
ON SEGUIDORES.artist_id = ARTISTS.artist_id
GROUP BY ARTISTS.artist_name, ALBUNS.album_name
ORDER BY seguidores DESC, artista, album;