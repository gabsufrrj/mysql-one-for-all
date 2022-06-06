SELECT COUNT(DISTINCT song.song_id) AS cancoes, COUNT(DISTINCT artist.artist_id) AS artistas, COUNT(DISTINCT album.album_id) AS albuns
FROM SpotifyClone.artist AS artist
INNER JOIN SpotifyClone.album AS album
ON artist.artist_id = album.artist_id
INNER JOIN SpotifyClone.songs AS song
ON song.album_id = album.album_id;