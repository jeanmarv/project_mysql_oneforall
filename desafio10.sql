SELECT
	s.song_name AS nome, COUNT(*) AS reproducoes
FROM
  SpotifyClone.history AS h
JOIN
  SpotifyClone.songs AS s ON s.song_id = h.song_id
JOIN
  SpotifyClone.users AS u ON u.user_id = h.user_id
WHERE
  u.plan_id IN (1,4)
GROUP BY nome
ORDER BY nome;