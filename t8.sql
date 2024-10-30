-- Diar Ghaderi
-- diar.ghaderi@tuni.fi

SELECT Tuote.tuote_id, Tuote.nimi, Tuote.valmistaja, Tuote.hinta
FROM Tuote
LEFT OUTER JOIN Tilaustuote ON Tuote.tuote_id = Tilaustuote.tuote_id
WHERE Tilaustuote.tilaus_id IS NULL
ORDER BY Tuote.tuote_id;