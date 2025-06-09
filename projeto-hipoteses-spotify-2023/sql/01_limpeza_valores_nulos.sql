-- 01_limpeza_valores_nulos.sql

-- Substituir valores nulos na tabela Trackincompetition
CREATE OR REPLACE TABLE projeto-2-458521.spotify_2023.Trackincompetition_limpa AS
SELECT
  track_id,
  artist_name,
  in_apple_playlists,
  in_apple_charts,
  in_deezer_playlists,
  in_deezer_charts,
  COALESCE(in_shazam_charts, -1) AS in_shazam_charts
FROM
  projeto-2-458521.spotify_2023.Trackincompetition;

-- Substituir valores nulos na tabela Tracktechnicalinfo
CREATE OR REPLACE TABLE projeto-2-458521.spotify_2023.Tracktechnicalinfo_tratada AS
SELECT
  track_id,
  bpm,
  danceability,
  valence,
  energy,
  acousticness,
  instrumentalness,
  liveness,
  speechiness,
  IFNULL(key, 'sem informação') AS key,
  mode
FROM
  projeto-2-458521.spotify_2023.Tracktechnicalinfo;
