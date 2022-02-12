SELECT DISTINCT COUNT( * ) as cancoes,
COUNT( DISTINCT artist_id) as artistas,
COUNT( DISTINCT album_id) as albuns FROM SpotifyClone.songs;