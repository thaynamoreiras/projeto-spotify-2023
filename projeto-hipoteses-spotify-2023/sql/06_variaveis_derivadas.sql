-- 06_variaveis_derivadas.sql

CREATE OR REPLACE TABLE projeto-2-458521.spotify_2023.Trackinspotify_final AS
SELECT
  *,
  DATE(PARSE_DATE('%Y-%m-%d', date_full)) AS date_full_parsed,
  (in_spotify_playlists + in_apple_playlists + in_deezer_playlists) AS total_playlists
FROM
  projeto-2-458521.spotify_2023.spotify_completo;
