SELECT
  a.artist_name AS artista,
  alb.album_name AS album,
  COUNT(f.artist_id) AS seguidores
FROM
  SpotifyClone.artists AS a
JOIN
  SpotifyClone.albums AS alb ON a.artist_id = alb.artist_id
JOIN
  SpotifyClone.followed AS f ON a.artist_id = f.artist_id
GROUP BY
  album, artista
ORDER BY
  seguidores DESC, artista ASC, album ASC;