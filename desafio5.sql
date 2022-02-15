SELECT
  s.song_name AS 'cancao', COUNT(h.played_date) AS 'reproducoes'
FROM
  SpotifyClone.history AS h
JOIN
  SpotifyClone.songs AS s ON s.song_id = h.song_id
GROUP BY
  cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;