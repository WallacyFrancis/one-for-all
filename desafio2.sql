-- Auxiliado por Coruja
SELECT (SELECT COUNT(sound_id) FROM SpotifyClone.sounds) AS cancoes,
(SELECT COUNT(artist_id) FROM SpotifyClone.artists) AS artistas,
COUNT(DISTINCT album_id) AS albuns FROM SpotifyClone.albuns;