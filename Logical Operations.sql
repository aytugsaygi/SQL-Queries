SELECT * FROM Ogrenci
SELECT * FROM Ogrenci WHERE OgrenciNo > 500 AND ErkekMi = 0
SELECT * FROM Ogrenci WHERE Soyad = 'Kaya' OR Ad = 'Tolga'
SELECT * FROM Ogrenci WHERE OgrenciNo IN (421, 786, 821) AND ErkekMi = 0
SELECT * FROM Ogrenci WHERE Ad LIKE 'A%' /* Adı A ile başlayan tüm kayıtlar */
SELECT * FROM Ogrenci WHERE TCNo LIKE '%78%' /* Yan yana 34 olan tüm kayıtlar */