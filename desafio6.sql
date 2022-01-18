SELECT 	ROUND(MIN(plano.value), 2) AS faturamento_minimo,
ROUND(MAX(plano.value), 2) AS faturamento_maximo,
ROUND(AVG(plano.value),2) AS faturamento_medio,
ROUND(SUM(plano.value), 2) AS faturamento_total
FROM SpotifyClone.plans AS plano
JOIN SpotifyClone.users AS usuarios
ON plano.plan_id = usuarios.plan_fk;