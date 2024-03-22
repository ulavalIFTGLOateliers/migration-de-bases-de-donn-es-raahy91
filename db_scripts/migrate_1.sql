CREATE TABLE IF NOT EXISTS band (       bandName varchar(50),
                                        creation YEAR,
                                        genre varchar(50),
                                        PRIMARY KEY (bandName));

INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"), ("Mysterio", 2019, "pop");

RENAME TABLE singer TO musician;
ALTER TABLE musician CHANGE singerName musicianName varchar(50);
ALTER TABLE musician ADD COLUMN role varchar(50);
UPDATE musician SET role = "vocals" WHERE musicianName = "Alina";
UPDATE musician SET role = "guitar" WHERE musicianName = "Mysterio";
UPDATE musician SET role = "percussion" WHERE musicianName = "Rainbow";
UPDATE musician SET role = "piano" WHERE musicianName = "Luna";
ALTER TABLE musician ADD COLUMN bandName varchar(50);
ALTER TABLE musician ADD FOREIGN KEY (bandName) REFERENCES band(bandName);
UPDATE musician SET bandName = "Crazy Duo" WHERE musicianName = "Alina";
UPDATE musician SET bandName = "Mysterio" WHERE musicianName = "Mysterio";
UPDATE musician SET bandName = "Crazy Duo" WHERE musicianName = "Rainbow";
UPDATE musician SET bandName = "Luna" WHERE musicianName = "Luna";

ALTER TABLE album DROP FOREIGN KEY FK_A_singerName;
ALTER TABLE album ADD CONSTRAINT FK_A_musicianName FOREIGN KEY (singerName) REFERENCES musician (musicianName);
