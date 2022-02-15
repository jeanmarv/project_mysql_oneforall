SELECT
	ROUND(MIN(p.plan_prices), 2) AS "faturamento_minimo",
	ROUND(MAX(p.plan_prices), 2) AS "faturamento_maximo",
	ROUND(AVG(p.plan_prices), 2) AS "faturamento_medio",
	ROUND(SUM(p.plan_prices), 2) AS "faturamento_total"
FROM
	SpotifyClone.plans AS p
JOIN
	SpotifyClone.users AS u ON p.plan_id = u.plan_id;