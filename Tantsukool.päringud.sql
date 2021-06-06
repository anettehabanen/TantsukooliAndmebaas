CREATE TABLE inimesed (
    isikukood char(11) NOT NULL,
    eesnimi varchar(50) NOT NULL,
    perenimi varchar(50) NOT NULL,
    meil varchar(50) NOT NULL,
    PRIMARY KEY (isikukood)
);

CREATE TABLE treenerid (
    töö_ID INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY ,
    isikukood char(11) NOT NULL,
    tantsustiil varchar(50) NOT NULL,
    kuupalk int NOT NULL,               
    trennihind int NOT NULL,
);


CREATE TABLE grupid (
    nimi varchar(50) NOT NULL,
    min_vanus int NOT NULL,
    max_vanus int NOT NULL,
    tase char(1) NOT NULL,
    PRIMARY KEY (nimi)
);


CREATE TABLE tantsijad_grupid_seos (
    Id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY,
    tantsija_ID char(11) NOT NULL,
    grupinimi varchar(50) NOT NULL,  
);



CREATE TABLE registreeringud (
    Id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY,
    kasutaja_ID char(11) NOT NULL,
    eesmärk varchar(100),
    aeg datetime NOT NULL
);


CREATE TABLE tunniplaan (
    Id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY,
    nädalapäev char(1) NOT NULL, 
    kellaaeg time NOT NULL,
    grupp varchar(50) NOT NULL,
    treener_töö_ID int NOT NULL
);

CREATE TABLE kavad (
    pealkiri varchar(100) NOT NULL,
    grupp varchar(50) NOT NULL,
    treener_töö_ID int NOT NULL,
    PRIMARY KEY(pealkiri)
);


CREATE TABLE asendused (
    Id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY,
    asendatav_töö_ID int NOT NULL,
    asendaja_töö_ID int NOT NULL,
    aeg datetime NOT NULL
);




INSERT INTO inimesed 
    (isikukood, eesnimi, perenimi, meil)
VALUES 
    ('60403267482', 'Mari', 'Kask', 'marikask@gmail.com'),
    ('50312188372', 'Tom', 'Talvine', 'tom.talvine@gmail.com'),
    ('60207092719', 'Anni', 'Pihlakas', 'pihlakas.anni@gmail.com'),
    ('60711307291', 'Tuuli', 'Sillaots', 'sillaotstuuli@gmail.com'),
    ('50601189271', 'Ranno', 'Kivi', 'rannokivi@gmail.com'),
    ('60608137391', 'Merle', 'Maasikas', 'maasikas.merle@gmail.com'),
    ('60903288134', 'Piret', 'Pedak', 'pedak.piret@gmail.com'),
    ('61006291736', 'Maarika', 'Sirel', 'maarikaSirel@gmail.com'),
    ('50804279351', 'Tarmo', 'Kasemets', 'kasemets.tarmo@gmail.com'),
    ('50110312917', 'Harri', 'Lind', 'harri.lind@gmail.com'),
    ('50507279164', 'Toomas', 'Mäekivi', 'mäekivi.toomas@gmail.com'),
    ('61004190163', 'Helju', 'Maasikas', 'heljumaasikas@gmail.com'),
    ('60212058275', 'Liina', 'Kuusk', 'liina.kuusk@gmail.com'),
    ('60405190372', 'Lea', 'Maasalu', 'maasalu.lea@gmail.com'),
    ('61108020617', 'Kristel', 'Ploom', 'ploomkristel@gmail.com'),
    ('48510149371', 'Terje', 'Muru', 'terjeMuru@gmail.com'),
    ('48107269274', 'Milvi', 'Pütsepp', 'pütseppmilvi@gmail.com'),
    ('60507290123', 'Kaili', 'Mäe', 'kailimäe@gmail.com'),
    ('60811116392', 'Piia', 'Vasar', 'vasar.piia@gmail.com'),
    ('50503159725', 'Kaspar', 'Oja', 'kasparOja@gmail.com'),

    ('49502180264', 'Kerli', 'Suvi', 'kerlisuvi@tansukool.com'),
    ('49112058274', 'Tiina', 'Tamm', 'tiinatamm@tansukool.com'),
    ('39609140165', 'Oskar', 'Reila', 'oskarreila@tansukool.com'),
    ('49906167291', 'Külli', 'Kull', 'küllikull@tansukool.com'),
    ('48203158337', 'Maria', 'Maasikas', 'mariamaasikas@tansukool.com');



INSERT INTO treenerid 
    (isikukood, tantsustiil, kuupalk, trennihind)
VALUES 
    ('49502180264', 'jooga', 270, 20),
    ('49112058274', 'jazzfunc', 220, 16),
    ('39609140165', 'hiphop', 320, 16),
    ('49906167291', 'kaasaegne', 240, 12),
    ('48203158337', 'hiphop', 470, 24);



INSERT INTO tantsijad_grupid_seos
    (tantsija_ID, grupinimi)
VALUES 
    ('60403267482', 'Hobigrupp'),
    ('50312188372', 'Eliit'),
    ('50312188372', 'Hobigrupp'),
    ('60207092719', 'Hobigrupp'),
    ('60711307291', 'Noored1'),
    ('50601189271', 'Noored2'),
    ('60608137391', 'Noored1'),
    ('60903288134', 'Lapsed'),
    ('61006291736', 'Lapsed'),
    ('50804279351', 'Noored1'),
    ('50110312917', 'Hobigrupp'),
    ('50110312917', 'Täiskasvanud'),
    ('50507279164', 'Eliit'),
    ('61004190163', 'Lapsed'),
    ('60212058275', 'Eliit'),
    ('60212058275', 'Täiskasvanud'),
    ('60212058275', 'Hobigrupp'),
    ('60405190372', 'Hobigrupp'),
    ('61108020617', 'Lapsed'),
    ('48510149371', 'Täiskasvanud'),
    ('48107269274', 'Täiskasvanud'),
    ('60507290123', 'Eliit'),
    ('60811116392', 'Noored2'),
    ('50503159725', 'Hobigrupp'),
    ('49906167291', 'Eliit');




INSERT INTO grupid 
    (nimi, min_vanus, max_vanus, tase)
VALUES 
    ('Lapsed', 8, 12, 'A'),
    ('Noored1', 13, 15, 'K'),
    ('Noored2', 13, 15, 'A'),
    ('Hobigrupp', 16, 20, 'K'),
    ('Eliit', 16, 22, 'P'),
    ('Täiskasvanud', 18, 100, 'K');
    

INSERT INTO registreeringud
    (kasutaja_ID, eesmärk, aeg)
VALUES 
    ('49906167291', 'impro', '2021-04-04 15:00'),
    ('60212058275', 'harjutamine', '2021-04-10 17:00'),
    ('60403267482', 'ÜKE', '2021-04-16 19:00'),
    ('50110312917', 'võistluseks harjutamine', '2021-04-18 12:30'),
    ('39609140165', 'lisatrenn kava jaoks', '2021-04-24 11:00'),
    ('60212058275', 'soolo', '2021-04-25 16:00');


INSERT INTO tunniplaan 
    (nädalapäev, kellaaeg, grupp, treener_töö_ID)
VALUES
    ('E', '16:00', 'Noored2', 4),
    ('E', '17:30', 'Noored1', 4),
    ('T', '15:30', 'Lapsed', 3),
    ('T', '17:30', 'Eliit', 3),
    ('T', '19:00', 'Täiskasvanud', 1),
    ('K', '16:00', 'Lapsed', 4),
    ('K', '17:00', 'Noored2', 5),
    ('K', '18:30', 'Hobigrupp', 5),
    ('N', '16:30', 'Noored1', 3),
    ('N', '18:00', 'Täiskasvanud', 1),
    ('N', '19:30', 'Eliit', 2),
    ('R', '17:00', 'Hobigrupp', 2),
    ('R', '18:00', 'Eliit', 5);
 


INSERT INTO kavad
    (pealkiri, grupp, treener_töö_ID)
VALUES 
    ('Ühishingamine', 'Noored2', 4),
    ('Aeg', 'Noored1', 4),
    ('Spioonid', 'Noored1', 3),
    ('Täpid-triibud', 'Lapsed', 4),
    ('Süsteemimurdjad', 'Eliit', 3),
    ('Hot summer breeze', 'Eliit', 2),
    ('Lagara', 'Eliit', 5),
    ('Lahedad vs ägedad', 'Hobigrupp', 5);




INSERT INTO asendused 
    (asendatav_töö_id, asendaja_töö_ID, aeg)
VALUES 
    (4, 1, '2021-04-05 16:00'),
    (3, 5, '2021-04-13 15:30'),
    (3, 5, '2021-04-13 17:30'),
    (2, 4, '2021-04-29 19:30');



ALTER TABLE kavad ADD CONSTRAINT fk_kavad_grupid
FOREIGN KEY (grupp) REFERENCES Grupid (nimi);

ALTER TABLE kavad ADD CONSTRAINT fk_kavad_treenerid
FOREIGN KEY (treener_töö_ID) REFERENCES Treenerid (töö_ID);

ALTER TABLE asendused ADD CONSTRAINT fk_asendused_treener_asendaja
FOREIGN KEY (asendaja_töö_ID) REFERENCES Treenerid (töö_ID);

ALTER TABLE asendused ADD CONSTRAINT fk_asendused_treener_asendatav
FOREIGN KEY (asendatav_töö_ID) REFERENCES Treenerid (töö_ID);

ALTER TABLE tunniplaan ADD CONSTRAINT fk_tunniplaan_treenerid
FOREIGN KEY (treener_töö_ID) REFERENCES Treenerid (töö_ID);

ALTER TABLE tunniplaan ADD CONSTRAINT fk_tunniplaan_grupid
FOREIGN KEY (grupp) REFERENCES Grupid (nimi);

ALTER TABLE treenerid ADD CONSTRAINT fk_treenerid_inimesed   ---???
FOREIGN KEY (isikukood) REFERENCES Inimesed(isikukood);

ALTER TABLE tantsijad_grupid_seos ADD CONSTRAINT fk_tantsijate_grupid
FOREIGN KEY (tantsija_ID) REFERENCES Inimesed (isikukood);

ALTER TABLE tantsijad_grupid_seos ADD CONSTRAINT fk_gruppide_tantsijad
FOREIGN KEY (grupinimi) REFERENCES Grupid (nimi);

ALTER TABLE registreeringud ADD CONSTRAINT fk_registreeringud_inimesed
FOREIGN KEY (kasutaja_ID) REFERENCES Inimesed (isikukood);



SELECT * FROM inimesed;
SELECT * FROM treenerid;
SELECT * FROM grupid;
SELECT * FROM tantsijad_grupid_seos;
SELECT * FROM tunniplaan;
SELECT * FROM registreeringud;
SELECT * FROM asendused;
SELECT * FROM kavad;



-- TOIMIB
CREATE PROCEDURE sp_uus_registreering
(IN a_kasutaja_ID char(11), IN a_eesmärk VARCHAR(100), IN a_aeg datetime, OUT a_id INTEGER)
BEGIN
    DECLARE i_id INTEGER;
    INSERT INTO registreeringud (kasutaja_ID, eesmärk, aeg)
    VALUES (a_kasutaja_ID, a_eesmärk, a_aeg);
    SELECT @@identity INTO i_id;
    SET a_id = i_id;
END

CALL sp_uus_registreering ('60507290123', 'kava välja mõtlemine', '2021-04-11 14:30') 



-- TOIMIB
CREATE PROCEDURE sp_tunniplaanis_treenerite_nimed  AS 
BEGIN
    SELECT p.nädalapäev, p.kellaaeg, p.grupp, i.eesnimi + ' ' + i.perenimi AS treeneri_nimi
    FROM tunniplaan as p 
    JOIN treenerid as t ON p.treener_töö_ID = t.töö_ID
    JOIN inimesed AS i ON t.isikukood = i.isikukood
    --GROUP BY nädalapäev, kellaaeg, grupp, i.eesnimi, i.perenimi
    ORDER BY 
        CASE WHEN p.nädalapäev = 'E' THEN 1
            WHEN p.nädalapäev = 'T' THEN 2
            WHEN p.nädalapäev = 'K' THEN 3
            WHEN p.nädalapäev = 'N' THEN 4
            WHEN p.nädalapäev = 'R' THEN 5
        END, kellaaeg
END 

CALL sp_tunniplaanis_treenerite_nimed



-- TOIMIB
CREATE PROCEDURE sp_meili_vahetamine
(IN a_isikukood char(11), IN a_meil varchar(50))
BEGIN
    UPDATE inimesed 
    SET meil = a_meil 
    WHERE isikukood = a_isikukood
END ;

CALL sp_meili_vahetamine ('61006291736', 'maarika.sirel@gmail.com')

SELECT * FROM inimesed




-- TOIMIB
CREATE PROCEDURE sp_grupi_trennid
(IN a_grupp varchar(50))
BEGIN
    SELECT p.nädalapäev, p.kellaaeg, i.eesnimi + ' ' + i.perenimi AS treeneri_nimi
    FROM tunniplaan as p 
    JOIN grupid as g ON p.grupp = g.nimi
    JOIN treenerid as t ON p.treener_töö_ID = t.töö_ID
    JOIN inimesed AS i ON t.isikukood = i.isikukood
    WHERE p.grupp = a_grupp
END;


CALL sp_grupi_trennid('Eliit')


-- TOIMIB
CREATE PROCEDURE sp_grupi_kavade_arv
(IN a_grupinimi varchar(50))
BEGIN
    SELECT grupp, count(*) 
    FROM kavad
    WHERE kavad.grupp = a_grupinimi
    GROUP BY grupp
    ORDER by grupp DESC;
END

CALL sp_grupi_kavade_arv('Eliit')


-- TOIMIB
CREATE PROCEDURE sp_gruppide_info AS
BEGIN
    SELECT g.nimi, g.tase, count(*)
    FROM grupid As g 
    JOIN tantsijad_grupid_seos AS s ON s.grupinimi=g.nimi
    GROUP BY g.nimi, g.tase
    ORDER BY g.nimi
END

CALL sp_gruppide_info()
DROP PROCEDURE sp_gruppide_info



-- TOIMIB
CREATE FUNCTION palga_leidmine(treeneriID integer)
RETURNS integer
BEGIN
    DECLARE palk integer;
    DECLARE kp integer;
    DECLARE asendanud integer;
    DECLARE asendatud integer;
    DECLARE th integer;
    SELECT t.kuupalk INTO kp FROM treenerid AS t WHERE t.töö_ID=treeneriID;
    SELECT COUNT(a.asendatav_töö_ID) INTO asendatud FROM asendused AS a
    WHERE a.asendatav_töö_ID=treeneriID;
    SELECT COUNT(a.asendaja_töö_ID) INTO asendanud FROM asendused AS a
    WHERE a.asendaja_töö_ID=treeneriID;
    SELECT t.trennihind INTO th FROM treenerid AS t WHERE t.töö_ID=treeneriID;
    SET palk = kp + (asendanud-asendatud)*th;
    RETURN palk;
END;


CREATE PROCEDURE treeneri_palk()
RESULT(nimi varchar(100), kuupalk int)
BEGIN
    SELECT i.eesnimi+' '+i.perenimi AS nimi, palga_leidmine(t.töö_ID) AS palk
    FROM inimesed AS i JOIN treenerid AS t ON t.isikukood=i.isikukood ORDER BY nimi;
END;


call treeneri_palk




