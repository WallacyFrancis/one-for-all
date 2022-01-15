SELECT COUNT(historico.sound_fk) AS quantidade_musicas_no_historico
FROM SpotifyClone.history_reproduction AS historico
JOIN SpotifyClone.users AS usuario
WHERE historico.user_fk = usuario.user_id
AND usuario.`name` = 'Bill';