-- 09_validacao_hipoteses.sql

-- Hipótese 1
SELECT
  CORR(bpm, streams) AS correlacao_bpm_streams
FROM
  projeto-2-458521.spotify_2023.spotify_completo
WHERE
  bpm IS NOT NULL AND streams IS NOT NULL;

-- Hipótese 2
SELECT
  CORR(in_spotify_charts, in_deezer_charts) AS correlacao_spotify_deezer
FROM
  projeto-2-458521.spotify_2023.spotify_completo
WHERE
  in_spotify_charts IS NOT NULL AND in_deezer_charts IS NOT NULL;

-- Hipótese 3
SELECT
  CORR(a.streams, b.total_playlists) AS correlacao_streams_playlists
FROM
  projeto-2-458521.spotify_2023.spotify_completo AS a
JOIN
  projeto-2-458521.spotify_2023.total_playlists AS b
ON
  a.track_id = b.track_id
WHERE
  a.streams IS NOT NULL AND b.total_playlists IS NOT NULL;

-- Hipótese 4
WITH artista_com_qtd_musicas AS (
  SELECT
    artists_name,
    COUNT(track_id) AS qtd_musicas,
    SUM(streams) AS total_streams
  FROM
    projeto-2-458521.spotify_2023.spotify_completo
  GROUP BY artists_name
)
SELECT
  CORR(qtd_musicas, total_streams) AS correlacao_musicas_streams
FROM
  artista_com_qtd_musicas;

-- Hipótese 5
SELECT
  CORR(danceability, streams) AS corr_danceability,
  CORR(energy, streams) AS corr_energy,
  CORR(valence, streams) AS corr_valence,
  CORR(acousticness, streams) AS corr_acousticness,
  CORR(instrumentalness, streams) AS corr_instrumentalness,
  CORR(liveness, streams) AS corr_liveness,
  CORR(speechiness, streams) AS corr_speechiness
FROM
  projeto-2-458521.spotify_2023.spotify_completo
WHERE
  streams IS NOT NULL;
