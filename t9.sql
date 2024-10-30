-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT Asiakas.asiakas_id, Asiakas.nimi, COUNT(Tilaus.tilaus_id) AS tilaus_lkm
FROM Asiakas
LEFT JOIN Tilaus On Asiakas.asiakas_id = Tilaus.asiakas_id
GROUP BY Asiakas.asiakas_id, Asiakas.nimi
ORDER BY Asiakas.asiakas_id;
