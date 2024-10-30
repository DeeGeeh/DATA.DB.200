-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT Tuote.tuote_id, Tuote.nimi, Tilaustuote.tilaus_id 
FROM Tuote
LEFT JOIN Tilaustuote ON Tuote.tuote_id = Tilaustuote.tuote_id
WHERE Tuote.valmistaja = "Apple"
ORDER BY Tuote.tuote_id, Tilaustuote.tilaus_id