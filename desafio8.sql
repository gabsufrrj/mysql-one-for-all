SELECT artist_name AS artista , album_name AS album
FROM SpotifyClone.artists AS ARTISTS
INNER JOIN SpotifyClone.albuns AS ALBUNS
ON ARTISTS.artist_id = ALBUNS.artist_id
WHERE ARTISTS.artist_name = 'Walter Phoenix'
ORDER BY album;