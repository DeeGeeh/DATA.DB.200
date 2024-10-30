-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT Tilaus.tilaus_id FROM Tilaus
JOIN Asiakas ON Tilaus.asiakas_id = Asiakas.asiakas_id
WHERE Asiakas.nimi = "Jaska Jokunen"
ORDER BY Tilaus.tilaus_id ASC;