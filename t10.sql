-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT Asiakas.asiakas_id, COUNT(Tilaus.tilaus_id) AS tilaus_lkm
FROM Asiakas

LEFT OUTER JOIN Tilaus On Asiakas.asiakas_id = Tilaus.asiakas_id

GROUP BY Asiakas.asiakas_id, Asiakas.nimi
HAVING tilaus_lkm > 1
ORDER BY Asiakas.asiakas_id;
