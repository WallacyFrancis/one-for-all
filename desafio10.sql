SELECT musica.`name` AS nome,
COUNT(musica.`name`) AS reproducoes
FROM SpotifyClone.`sounds` AS musica
JOIN SpotifyClone.history_reproduction AS historico
JOIN SpotifyClone.users AS usuario
JOIN SpotifyClone.plans AS plano
ON (plano.plan = 'gratuito' OR plano.plan = 'pessoal')
AND usuario.user_id = historico.user_fk
AND historico.sound_fk = musica.sound_id
GROUP BY musica.`name`;