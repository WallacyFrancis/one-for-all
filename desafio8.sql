SELECT cantor.`name` AS artista,
colection.`name`AS album
FROM SpotifyClone.artists AS cantor
INNER JOIN SpotifyClone.albuns AS colection
WHERE cantor.`name` = 'Walter Phoenix'
LIMIT 2;