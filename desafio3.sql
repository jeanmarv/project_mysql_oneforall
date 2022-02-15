SELECT 
	u.user_name AS 'usuario',
    COUNT(h.user_id) AS 'qtde_musicas_ouvidas',
    ROUND(SUM(s.song_length / 60), 2) AS 'total_minutos' 
FROM 
	SpotifyClone.users AS u
JOIN 
    SpotifyClone.history AS h ON u.user_id = h.user_id
JOIN
    SpotifyClone.songs AS s ON h.song_id = s.song_id
GROUP BY
    h.user_id
ORDER BY
    u.user_name;