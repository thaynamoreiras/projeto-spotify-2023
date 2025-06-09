-- 05_cast_dados.sql

-- Alterar streams para INT64
CREATE OR REPLACE TABLE projeto-2-458521.spotify_2023.Trackinspotify_final AS
SELECT
  *,
  CAST(streams AS INT64) AS streams_int
FROM
  projeto-2-458521.spotify_2023.Trackinspotify_final;
