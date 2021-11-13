CREATE TABLE tcentr
(
 numce INTEGER PRIMARY KEY,
 nomce VARCHAR(30) NOT NULL,
 direccion VARCHAR(50) NOT NULL
);

CREATE TABLE tdepto
(
 numde INTEGER PRIMARY KEY,
 numce INTEGER NOT NULL,
 direc INTEGER NOT NULL,
 tidir CHAR(1) NOT NULL,
 presu decimal(2,0) NOT NULL,
 depde INTEGER,
 nomde VARCHAR(50) NOT NULL,
 CONSTRAINT ck_tidir
 CHECK(tidir IN ('P', 'F')),
 CONSTRAINT fk_tdepto_tcentr
 FOREIGN KEY(numce)
 REFERENCES tcentr(numce)
);

CREATE TABLE temple
(
 numen INTEGER PRIMARY KEY,
 numde INTEGER NOT NULL,
 extel INTEGER NOT NULL,
 fecha DATE NOT NULL,
 fecin DATE NOT NULL,
 salar DECIMAL(3,0) NOT NULL,
 comis DECIMAL(3,0),
 numhi INTEGER NOT NULL,
 nomem VARCHAR(50) NOT NULL,
 CONSTRAINT fk_temple_tdepto
 FOREIGN KEY(numde)
 REFERENCES tdepto(numde)
 );
