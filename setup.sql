PRAGMA foreign_keys = ON;

create table Asiakas(
asiakas_id integer primary key,
nimi varchar(128) not null,
osoite varchar(128) not null
);

create table Tuote(
tuote_id integer primary key,
nimi varchar(128) not null,
valmistaja varchar(128) not null,
hinta numeric(10,2) not null
);

create table Tilaus(
tilaus_id integer primary key,
asiakas_id integer not null,
tila integer not null default 0,
foreign key (asiakas_id) references Asiakas(asiakas_id)
);

create table Tilaustuote(
tilaus_id integer not null,
tuote_id integer not null,
lkm integer not null,
primary key(tilaus_id, tuote_id),
foreign key (tilaus_id) references Tilaus(tilaus_id),
foreign key (tuote_id) references Tuote(tuote_id)
); 

INSERT INTO Asiakas (asiakas_id, nimi, osoite) VALUES
(1, 'Matti Mainio', 'jokin 1'),
(2, 'Tellu', 'jokin 2'),
(3, 'Jaska Jokunen', 'jokin 3'),
(4, 'Essi Esimerkki', 'jokin 4');

INSERT INTO Tuote (tuote_id, nimi, valmistaja, hinta) VALUES
(1, 'rihveli', 'Roina ja kilke', 20),
(2, 'tunkki', 'Kummeli ry', 39.95),
(3, 'iPhone 7 laturi', 'Apple', 39.95),
(4, 'iPhone 7', 'Apple', 1000);

INSERT INTO Tilaus (tilaus_id, asiakas_id, tila) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 3, 1);

INSERT INTO Tilaustuote (tilaus_id, tuote_id, lkm) VALUES
(1, 1, 1000),
(1, 4, 1),
(2, 2, 2),
(3, 1, 4),
(3, 2, 6),
(4, 2, 500);
