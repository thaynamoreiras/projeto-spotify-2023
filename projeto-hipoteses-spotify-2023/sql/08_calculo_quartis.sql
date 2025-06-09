-- 08_calculo_quartis.sql

CREATE OR REPLACE VIEW projeto-2-458521.spotify_2023.view_quartis_caracteristicas AS
WITH quartis_raw AS (
  SELECT
    *,
    NTILE(4) OVER (ORDER BY valence) AS quartil_valence,
    NTILE(4) OVER (ORDER BY energy) AS quartil_energy,
    NTILE(4) OVER (ORDER BY acousticness) AS quartil_acousticness,
    NTILE(4) OVER (ORDER BY instrumentalness) AS quartil_instrumentalness,
    NTILE(4) OVER (ORDER BY liveness) AS quartil_liveness,
    NTILE(4) OVER (ORDER BY speechiness) AS quartil_speechiness,
    NTILE(4) OVER (ORDER BY danceability) AS quartil_danceability
  FROM
    projeto-2-458521.spotify_2023.spotify_completo
)

SELECT
  *,
  IF(quartil_valence = 1, "Baixa",
    IF(quartil_valence = 2, "Média-baixa",
      IF(quartil_valence = 3, "Média-alta", "Alta")
    )
  ) AS categoria_valence,
  IF(quartil_energy = 1, "Baixa",
    IF(quartil_energy = 2, "Média-baixa",
      IF(quartil_energy = 3, "Média-alta", "Alta")
    )
  ) AS categoria_energy,
  IF(quartil_acousticness = 1, "Baixa",
    IF(quartil_acousticness = 2, "Média-baixa",
      IF(quartil_acousticness = 3, "Média-alta", "Alta")
    )
  ) AS categoria_acousticness,
  IF(quartil_instrumentalness = 1, "Baixa",
    IF(quartil_instrumentalness = 2, "Média-baixa",
      IF(quartil_instrumentalness = 3, "Média-alta", "Alta")
    )
  ) AS categoria_instrumentalness,
  IF(quartil_liveness = 1, "Baixa",
    IF(quartil_liveness = 2, "Média-baixa",
      IF(quartil_liveness = 3, "Média-alta", "Alta")
    )
  ) AS categoria_liveness,
  IF(quartil_speechiness = 1, "Baixa",
    IF(quartil_speechiness = 2, "Média-baixa",
      IF(quartil_speechiness = 3, "Média-alta", "Alta")
    )
  ) AS categoria_speechiness,
  IF(quartil_danceability = 1, "Baixa",
    IF(quartil_danceability = 2, "Média-baixa",
      IF(quartil_danceability = 3, "Média-alta", "Alta")
    )
  ) AS categoria_danceability
FROM quartis_raw;
