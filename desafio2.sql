SELECT COUNT(DISTINCT song.song_id) AS cancoes, COUNT(DISTINCT artists.artist_id) AS artistas, COUNT(DISTINCT albuns.album_id) AS albuns
FROM SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.albuns AS albuns
ON artists.artist_id = albuns.artist_id
INNER JOIN SpotifyClone.songs AS song
ON song.album_id = albuns.album_id;