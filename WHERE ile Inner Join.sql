--SELECT * FROM Ogrenci
--SELECT * FROM OgrenciAdres

SELECT Ogrenci.OgrenciNo, 
	   Ogrenci.Ad,
	   Ogrenci.Soyad, 
	   Ogrenci.KayitTarihi, 
	   OgrenciAdres.Adres,
	   OgrenciAdres.Sehir 
	   FROM Ogrenci, OgrenciAdres 
	   WHERE Ogrenci.OgrenciNo = OgrenciAdres.OgrenciNo