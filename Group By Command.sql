SELECT * FROM Ogrenci
SELECT ErkekMi, 
	COUNT(*) AS 'Ogrenci Sayisi',
	AVG(SinavNotu1) AS 'Sinav1 Ortalamasi',
	AVG(SinavNotu2) AS 'Sinav2 Ortalamasi',
	AVG(Final) AS 'Final Ortalamasi',
	MIN(SinavNotu2) AS 'En Düsük Sinav2 Notu',
	MAX(SinavNotu2) AS 'En Yüksek Sinav2 Notu'
FROM Ogrenci GROUP BY ErkekMi
