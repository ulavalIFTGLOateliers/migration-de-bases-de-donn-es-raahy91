ALTER TABLE album DROP FOREIGN KEY FK_A_musicianName;

ALTER TABLE musician DROP FOREIGN KEY musician_ibfk_1;
ALTER TABLE musician DROP COLUMN bandName;
ALTER TABLE musician CHANGE musicianName singerName varchar(50);
ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES musician (singerName);
ALTER TABLE musician DROP COLUMN role;
RENAME TABLE musician TO singer;

DELETE FROM band;
DROP TABLE band;
