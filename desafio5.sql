SELECT musica.name AS cancao,
COUNT(history.sound_fk) AS reproducoes
FROM SpotifyClone.sounds AS musica
INNER JOIN SpotifyClone.history_reproduction AS history
ON history.sound_fk = musica.sound_id
GROUP BY history.sound_fk
ORDER BY reproducoes DESC,
cancao LIMIT 2;