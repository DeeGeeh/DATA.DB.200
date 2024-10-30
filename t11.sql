-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT Asiakas.asiakas_id, Asiakas.nimi
FROM Asiakas
JOIN Tilaus ON Asiakas.asiakas_id = Tilaus.asiakas_id
JOIN Tilaustuote ON Tilaus.tilaus_id = Tilaustuote.tilaus_id
JOIN Tuote ON Tilaustuote.tuote_id = Tuote.tuote_id
WHERE Tuote.nimi IN ("rihveli", "tunkki")
GROUP BY Asiakas.asiakas_id, Asiakas.nimi
HAVING COUNT(DISTINCT Tuote.nimi) = 2
