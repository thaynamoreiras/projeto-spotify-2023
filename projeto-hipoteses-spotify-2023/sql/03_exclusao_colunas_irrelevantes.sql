-- 03_exclusao_colunas_irrelevantes.sql

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
  speechiness
FROM
  projeto-2-458521.spotify_2023.Tracktechnicalinfo_tratada;
