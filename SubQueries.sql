SELECT * FROM Ogrenci
SELECT * FROM OgrenciAdres
SELECT * FROM KantinKayitlari

SELECT Ogrenci.OgrenciNo, Ogrenci.Ad, Ogrenci.Soyad 
FROM Ogrenci 
WHERE OgrenciNo IN (SELECT OgrenciNo FROM OgrenciAdres WHERE Sehir = 35)

SELECT Ogrenci.OgrenciNo, Ogrenci.Ad, Ogrenci.Soyad 
FROM Ogrenci 
WHERE OgrenciNo IN (SELECT OgrenciNo FROM KantinKayitlari WHERE Ücret >= 35)
