SELECT user.name AS usuario,
IF (MAX(YEAR(history.date_reproduction)) = 2021, 'Usuário ativo', 'Usuário inativo')
AS condicao_usuario
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.history_reproduction AS history
ON user.user_id = history.user_fk
GROUP BY user.name
ORDER BY user.name ASC;