SELECT
  s.song_name AS nome, COUNT(h.song_id) AS reproducoes
FROM
  SpotifyClone.songs AS s
JOIN
  SpotifyClone.history AS h ON s.song_id = h.song_id
JOIN
  SpotifyClone.users AS u ON h.user_id = u.user_id
WHERE
  u.plan_id IN (1, 4)
GROUP BY
  nome
ORDER BY
  nome;

--https://github.com/tryber/sd-015-a-mysql-one-for-all/pull/54/files, peguei uma dica de como achar por planos.