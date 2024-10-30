-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT Tuote.tuote_id, Tuote.nimi FROM Tuote

JOIN Tilaustuote ON Tilaustuote.tuote_id = Tuote.tuote_id
JOIN Tilaus ON Tilaus.tilaus_id = Tilaustuote.tilaus_id
JOIN Asiakas ON Asiakas.asiakas_id = Tilaus.asiakas_id

WHERE Asiakas.nimi = "Jaska Jokunen" 

AND Tilaus.tila = 1

ORDER BY Tilaus.tilaus_id ASC;
