SELECT musica.name AS nome,
COUNT(historico.sound_fk) AS reproducoes
FROM SpotifyClone.sounds AS musica
JOIN SpotifyClone.history_reproduction AS historico
JOIN SpotifyClone.users AS usuario
JOIN SpotifyClone.plans AS plano
ON (plano.plan = 'gratuito' OR plano.plan = 'pessoal')
AND usuario.user_id = historico.user_fk
AND historico.sound_fk = musica.sound_id
AND plano.plan_id = usuario.plan_fk
GROUP BY musica.name
ORDER BY musica.name ASC;