SELECT FORMAT(MIN(price), 2) AS faturamento_minimo,
FORMAT(MAX(price), 2) AS faturamento_maximo,
FORMAT(AVG(price), 2) AS faturamento_medio,
FORMAT(SUM(price), 2) AS faturamento_total
FROM SpotifyClone.plans AS PLANS
INNER JOIN SpotifyClone.users AS USERS
ON USERS.plan_id = PLANS.plan_id;