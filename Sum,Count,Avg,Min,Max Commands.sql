
SELECT * FROM Ogrenci

/* Aynı Mantık */
SELECT COUNT(*) FROM Ogrenci
--SELECT COUNT(OgrenciNo) FROM Ogrenci

SELECT COUNT(*) FROM Ogrenci WHERE ErkekMi = 1
SELECT COUNT(*) FROM Ogrenci WHERE ErkekMi = 0
SELECT COUNT(*) FROM Ogrenci WHERE DogumTarihi >= '2000.09.03'

SELECT SUM(Final) FROM Ogrenci
SELECT MAX(SinavNotu2) FROM Ogrenci
SELECT MIN(SinavNotu2) FROM Ogrenci
SELECT AVG(Final) FROM Ogrenci

SELECT SUM(Final) / COUNT(*) FROM Ogrenci