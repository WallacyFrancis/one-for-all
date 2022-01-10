SELECT COUNT(sound_id) AS cancoes,
COUNT(DISTINCT artist_id) AS artistas,
COUNT(DISTINCT album_id) AS albuns
FROM SpotifyClone.`sounds` AS music
INNER JOIN SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albuns AS al
ON music.album_fk = ar.artist_id
AND al.artist_fk = ar.artist_id;