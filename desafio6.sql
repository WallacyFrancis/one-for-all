SELECT 	MIN(plano.`value`) AS faturamento_minimo,
MAX(plano.`value`) AS faturamento_maximo,
ROUND(AVG(plano.`value`),2) AS faturamento_medio,
ROUND(SUM(plano.`value`), 2) AS faturamento_total
FROM SpotifyClone.plans AS plano
INNER JOIN SpotifyClone.users AS usuarios
ON plano.plan_id = usuarios.user_id;