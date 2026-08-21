/*

CREATE TRIGGER myTrigger
ON Ogrenci 
AFTER INSERT AS 
BEGIN
	INSERT INTO OgrenciLog (OgrenciSayisi, Tarih) 
	VALUES ((SELECT COUNT(OgrenciNo) FROM Ogrenci), GETDATE())
END

*/

INSERT INTO Ogrenci (OgrenciNo, Ad, Soyad, TCNo, KayitTarihi, ErkekMi, DogumTarihi) 
VALUES (983, 'Ali', 'Çalışır', '16451716176', '20210505', 1, '20000101')

/*

CREATE TRIGGER myTrigger2
ON Ogrenci 
AFTER DELETE AS 
BEGIN
	INSERT INTO OgrenciLog (OgrenciSayisi, Tarih) 
	VALUES ((SELECT COUNT(OgrenciNo) FROM Ogrenci), GETDATE())
END

*/

DELETE FROM Ogrenci WHERE OgrenciNo = 983

SELECT * FROM OgrenciLog