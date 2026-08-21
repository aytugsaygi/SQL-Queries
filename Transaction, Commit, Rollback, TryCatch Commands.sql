/*

CREATE TABLE Ogrenciler (
	OgrenciID INT PRIMARY KEY,
	Ad VARCHAR(50),
	Soyad VARCHAR(50),
	Sinif VARCHAR(10)
)

*/

BEGIN TRANSACTION;

BEGIN TRY

	INSERT INTO Ogrenciler (OgrenciID, Ad, Soyad, Sinif) VALUES (5, 'Kaan', 'Yılmaz', '10-A')
	INSERT INTO Ogrenciler (OgrenciID, Ad, Soyad, Sinif) VALUES (6, 'Zeynep', 'Demir', '10-B')
	INSERT INTO Ogrenciler (OgrenciID, Ad, Soyad, Sinif) VALUES (7, 'Bartu', 'Kaya', '10-A')
	INSERT INTO Ogrenciler (OgrenciID, Ad, Soyad, Sinif) VALUES (8, 'Osman', 'Yıldız', '10-C')
	COMMIT -- Tüm öğrenciler başarıyla eklenince işlemi onaylama kısmı.

END TRY 

BEGIN CATCH

	-- Hata durumunda işlemi geri alma kısmı.
	ROLLBACK

END CATCH

SELECT * FROM Ogrenciler