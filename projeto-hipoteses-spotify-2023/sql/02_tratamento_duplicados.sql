-- 02_tratamento_duplicados.sql

-- Identificar duplicados na Trackinspotify
WITH duplicates AS (
  SELECT
    track_id,
    COUNT(*) AS qtd
  FROM
    projeto-2-458521.spotify_2023.Trackinspotify
  GROUP BY track_id
  HAVING qtd > 1
)

-- Criar tabela sem duplicados (mantendo a versão mais relevante)
CREATE OR REPLACE TABLE projeto-2-458521.spotify_2023.Trackinspotify_final AS
SELECT * EXCEPT(rn)
FROM (
  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY track_id ORDER BY streams DESC) AS rn
  FROM projeto-2-458521.spotify_2023.Trackinspotify
)
WHERE rn = 1;
