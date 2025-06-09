-- 07_uniao_tabelas.sql

CREATE OR REPLACE TABLE projeto-2-458521.spotify_2023.spotify_completo AS
SELECT
  s.track_id,
  s.track_name,
  s.artists_name,
  s.artist_count,
  s.in_spotify_playlists,
  s.in_spotify_charts,
  s.streams,
  s.date_full,
  c.in_apple_playlists,
  c.in_apple_charts,
  c.in_deezer_playlists,
  c.in_deezer_charts,
  c.in_shazam_charts,
  t.bpm,
  t.danceability,
  t.valence,
  t.energy,
  t.acousticness,
  t.instrumentalness,
  t.liveness,
  t.speechiness
FROM projeto-2-458521.spotify_2023.Trackinspotify_final AS s
LEFT JOIN projeto-2-458521.spotify_2023.Trackincompetition_limpa AS c
  ON s.track_id = c.track_id
LEFT JOIN projeto-2-458521.spotify_2023.Tracktechnicalinfo_tratada AS t
  ON s.track_id = t.track_id;
