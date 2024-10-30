-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT DISTINCT Asiakas.asiakas_id, Asiakas.nimi
FROM Asiakas
INNER JOIN Tilaus ON Tilaus.asiakas_id = Asiakas.asiakas_id
ORDER BY Asiakas.asiakas_id ASC;