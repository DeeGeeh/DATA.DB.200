-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT Tilaus.tilaus_id, Tilaus.asiakas_id, Asiakas.nimi
FROM Tilaus 
JOIN Asiakas ON Tilaus.asiakas_id = Asiakas.asiakas_id
ORDER BY Tilaus.tilaus_id;