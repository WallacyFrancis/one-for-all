SELECT user.name AS usuario,
COUNT(ouvidas.user_fk) AS qtde_musicas_ouvidas,
ROUND(SUM(musicas.duration) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS user
INNER JOIN  SpotifyClone.history_reproduction AS ouvidas
ON user.user_id = ouvidas.user_fk
INNER JOIN SpotifyClone.sounds AS musicas
ON ouvidas.sound_fk = musicas.sound_id
GROUP BY user.name
ORDER BY usuario ASC;
