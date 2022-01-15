COUNT(reproduction.sound_fk) AS reproducoes
FROM SpotifyClone.sounds AS musica
INNER JOIN SpotifyClone.history_reproduction AS reproduction
ON reproduction.sound_fk = musica.sound_id
GROUP BY musica.`name`
ORDER BY musica.`name` ASC, cancao
LIMIT 2;