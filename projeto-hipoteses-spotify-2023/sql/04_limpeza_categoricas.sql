-- 04_limpeza_categoricas.sql

-- Limpar caracteres especiais em nomes das músicas e artistas
CREATE OR REPLACE TABLE projeto-2-458521.spotify_2023.Trackinspotify_final AS
SELECT
  track_id,
  REGEXP_REPLACE(track_name, r"[^a-zA-Z0-9\s]", "") AS track_name,
  REGEXP_REPLACE(artists_name, r"[^a-zA-Z0-9\s]", "") AS artists_name,
  artist_count,
  in_spotify_playlists,
  in_spotify_charts,
  streams,
  date_full
FROM
  projeto-2-458521.spotify_2023.Trackinspotify_final;
