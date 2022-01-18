-- Auxiliado pór Ariane Ueti na última linha
SELECT cantor.name AS artista,
colection.name AS album,
COUNT(seguindo.artist_fk) AS seguidores
FROM SpotifyClone.artists AS cantor
JOIN SpotifyClone.albuns AS colection
JOIN SpotifyClone.follows AS seguindo
WHERE colection.artist_fk = cantor.artist_id
AND cantor.artist_id = seguindo.artist_fk
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
